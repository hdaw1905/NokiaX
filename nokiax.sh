#!/bin/bash

clear

BANNER() {
  echo "=========================================="
  echo " NokiaX — Your smartphone, but dumb again."
  echo "=========================================="
  echo
}

pause() {
  read -p "Press ENTER to continue..."
}

ADB="adb"
REMOVE_LIST="remove-list.txt"
KEEP_LIST="keep-list.txt"
LOG_FILE="removed.log"
DEVICE_ID=""

BANNER

# STEP 1 — Check Python & pip
if ! command -v python3 &> /dev/null; then
  echo "❌ Python not found. Install Python first."
  exit 1
fi

if ! command -v pip3 &> /dev/null; then
  echo "❌ pip not found. Installing pip..."
  python3 -m ensurepip --upgrade
fi

echo "✓ Python & pip ready"
pause

# STEP 2 — Install adb via pip (fallback)
if ! command -v adb &> /dev/null; then
  echo "⚠️ adb not found. Installing via pip..."
  pip3 install adb
fi

if ! command -v adb &> /dev/null; then
  echo "❌ adb still not found. Install platform-tools manually."
  exit 1
fi

echo "✓ adb ready"
pause

# STEP 3 — Guide USB Debugging + Detect Devices
clear
BANNER

echo "STEP 3: Enable USB Debugging on your phone"
echo "-----------------------------------------"
echo "1) Open Settings → About phone"
echo "2) Tap Build Number 7 times"
echo "3) Go to Developer Options"
echo "4) Enable USB Debugging"
echo "5) Connect phone via USB"
echo "6) Accept the RSA fingerprint prompt"
echo
echo "Waiting for device..."

while true; do
  DEVICE_LINES=$(adb devices | sed 1d | grep -v '^$')
  DEVICE_COUNT=$(echo "$DEVICE_LINES" | wc -l)

  if [ "$DEVICE_COUNT" -ge 1 ]; then
    break
  fi

  sleep 2
done

# STEP 3.1 — Handle Multiple Devices
if [ "$DEVICE_COUNT" -gt 1 ]; then
  echo
  echo "Multiple devices detected:"
  echo "---------------------------"

  i=1
  declare -a DEVICE_IDS

  while read -r line; do
    ID=$(echo "$line" | awk '{print $1}')
    STATUS=$(echo "$line" | awk '{print $2}')

    if [ "$STATUS" = "device" ]; then
      echo "[$i] $ID"
      DEVICE_IDS+=("$ID")
      ((i++))
    fi
  done <<< "$DEVICE_LINES"

  echo
  read -p "Select device number: " CHOICE

  DEVICE_ID="${DEVICE_IDS[$((CHOICE-1))]}"

  if [ -z "$DEVICE_ID" ]; then
    echo "❌ Invalid selection."
    exit 1
  fi

else
  DEVICE_ID=$(echo "$DEVICE_LINES" | awk '{print $1}')
fi

# STEP 3.2 — Show Device Info
MODEL=$(adb -s "$DEVICE_ID" shell getprop ro.product.model | tr -d '\r')
BRAND=$(adb -s "$DEVICE_ID" shell getprop ro.product.brand | tr -d '\r')
ANDROID_VER=$(adb -s "$DEVICE_ID" shell getprop ro.build.version.release | tr -d '\r')

echo
echo "📱 Connected Device:"
echo "--------------------"
echo "Brand:   $BRAND"
echo "Model:   $MODEL"
echo "Android: $ANDROID_VER"
echo

read -p "Is this the correct phone? (yes/no): " CONFIRM_DEVICE

if [ "$CONFIRM_DEVICE" != "yes" ]; then
  echo "❌ Aborted by user."
  exit 0
fi

echo "✓ Using device: $DEVICE_ID"
pause

# STEP 4 — Validate remove list
if [ ! -f "$REMOVE_LIST" ]; then
  echo "❌ $REMOVE_LIST not found. Create it first."
  exit 1
fi

REMOVE_PKGS=$(grep -v '^#' "$REMOVE_LIST" | sed '/^$/d')

if [ -z "$REMOVE_PKGS" ]; then
  echo "❌ Remove list is empty. Nothing to remove."
  exit 0
fi

KEEP_PKGS=""
if [ -f "$KEEP_LIST" ]; then
  KEEP_PKGS=$(grep -v '^#' "$KEEP_LIST" | sed '/^$/d')
fi

clear
BANNER

echo "Apps scheduled for removal:"
echo "-----------------------------"

FINAL_LIST=()

for pkg in $REMOVE_PKGS; do
  if echo "$KEEP_PKGS" | grep -qx "$pkg"; then
    echo "⚠️  Skipped (protected): $pkg"
  else
    echo " - $pkg"
    FINAL_LIST+=("$pkg")
  fi
done

COUNT=${#FINAL_LIST[@]}

echo
read -p "Proceed to remove $COUNT apps? (yes/no): " CONFIRM

if [ "$CONFIRM" != "yes" ]; then
  echo "Cancelled."
  exit 0
fi

# STEP 5 — Remove apps
clear
BANNER

echo "Starting removal..."
echo "---------------------"

for pkg in "${FINAL_LIST[@]}"; do
  echo "Removing $pkg ..."
  OUT=$(adb -s "$DEVICE_ID" shell pm uninstall -k --user 0 "$pkg" 2>&1)

  if echo "$OUT" | grep -q "Success"; then
    echo "✓ Removed $pkg"
    echo "$(date) | $pkg | OK" >> "$LOG_FILE"
  else
    echo "✗ Failed $pkg"
    echo "$(date) | $pkg | FAIL | $OUT" >> "$LOG_FILE"
  fi
done

# STEP 6 — Congratulations
clear
BANNER

echo "🎉 CONGRATULATIONS!"
echo "------------------"
echo "Your Android phone is now a Nokia-style device."
echo
echo "✔ Social media removed"
echo "✔ Browsers removed"
echo "✔ Distractions eliminated"
echo
echo "Enjoy a simpler phone experience 😄"
echo
echo "NokiaX — Your smartphone, but dumb again."

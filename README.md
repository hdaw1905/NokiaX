<img width="1536" height="605" alt="profile" src="https://github.com/user-attachments/assets/90482c33-e985-4de8-879c-56ab4ff571f2" />

**Your smartphone, but dumb again.**

NokiaX is a one-click Bash + ADB tool that transforms any Android smartphone into a Nokia-style minimal phone by removing distracting and non-essential apps.

It removes social media, browsers, video apps, and other addictive software while keeping only basic and important apps like calls, messages, camera, music, radio, games, navigation, and messaging apps.

> ⚠️ **Important:** Before attempting any steps, please read the **NokiaX_UserGuide.pdf** carefully for step-by-step instructions. Skipping the guide may result in unintended app removals or system issues.

---


## ✨ Features

- 🗑 Removes predefined Android apps using ADB  
- 📄 User-editable app removal list  
- 🛡 Safety whitelist for protected apps  
- 🔁 Re-runnable anytime  
- 🧭 Step-by-step guided process  
- 🔌 Waits for USB debugging automatically  
- 🧾 Logs all removed apps  
- 🎉 Shows a congratulations screen when done  

---

## 📦 What NokiaX Removes

By default, NokiaX removes:

- Social media apps (Instagram, Facebook, TikTok, X, Snapchat, etc.)  
- Web browsers (Chrome, Samsung Internet, Opera, etc.)  
- Video streaming apps (YouTube, Netflix, etc.)  
- Other scrolling-based or distracting apps  

---

## ✅ What NokiaX Keeps

NokiaX is designed to keep only essential and functional apps:

### 📞 Core Phone Apps
- Phone (Calls)  
- Contacts  
- SMS  
- Settings  
- Camera  
- Gallery  
- File Explorer  

---

### 💬 Messaging Apps
- WhatsApp  
- Messenger  
- IMO  
- WeChat  
- Signal  
- Telegram (optional)  

> Only messaging-focused apps. No infinite scrolling feeds.

---

### 🎵 Utilities
- Music Player  
- FM Radio  
- Calculator  
- Clock / Alarm  
- Notes  
- Calendar  

---

### 🎮 Games
- Offline games  
- Simple puzzle or arcade games  

---

### 🧭 Limited Internet (Basics Only)
- Navigation apps (Google Maps, Waze)  
- Ride-hailing apps (Uber, Careem)  
- Messaging apps  
- Game updates  

🚫 No browsers  
🚫 No social media feeds  

---

## 🚀 How It Works

1. You edit a simple text file with app package names  
2. You run the NokiaX script  
3. NokiaX removes the apps one by one  
4. Your phone becomes a Nokia-style minimal device  

---

## 🛠 Requirements

### General
- Android device  
- USB cable  
- USB debugging enabled  
- Internet connection  

### Linux / macOS
- Bash shell  
- Git  
- Python 3  
- pip  
- ADB (or NokiaX will try to install it)

### Windows
- Git for Windows (to run Bash)  
  Download: https://git-scm.com/install/windows  
- Python 3  
- pip  
- ADB (or NokiaX will try to install it)

---

## 🪟 Windows Users – Important Fixes (PATH Errors)

If you see any of these errors when running NokiaX:

- `python not found`  
- `pip not found`  
- `adb not found`  

It means Windows does **not know where Python or ADB is installed**.  
You must manually add them to the **PATH**.

---

## ❓ What is PATH?

PATH is a Windows setting that tells the system where programs are located.  
If Python or ADB is not in PATH, Windows cannot run them from the terminal.

---

## ✅ Step-by-Step: Fix PATH on Windows 10 / 11

### 1️⃣ Open Environment Variables

1. Click the **Start Menu**  
2. Type:  

    environment variables  

3. Click:  
**Edit the system environment variables**  
4. In the new window, click:  
**Environment Variables...**

---

### 2️⃣ Find the PATH Variable

In the **Environment Variables** window:

- Look at the **top section**:  
**User variables for YOURNAME**

- Find:  

    Path  

- Click **Path**  
- Click **Edit...**

---

### 3️⃣ Add Python to PATH

Click **New** and paste each line **one by one**:

    C:\Users\YOURNAME\AppData\Local\Programs\Python\Python311  
    C:\Users\YOURNAME\AppData\Local\Programs\Python\Python311\Scripts\  

> ⚠️ Replace `YOURNAME` with your actual Windows username  
> Example:  
> C:\Users\Husham\AppData\Local\Programs\Python\Python311  

---

### 4️⃣ Add ADB (Platform Tools) to PATH

Click **New** again and paste:

    C:\platform-tools  

> ⚠️ Make sure this folder actually exists  
> ⚠️ If you extracted platform-tools somewhere else, use that path instead

---

### 5️⃣ Save Changes

1. Click **OK**  
2. Click **OK** again  
3. Click **OK** again to close all windows  

---

### 6️⃣ Restart Your Computer

> ❗ **THIS STEP IS REQUIRED**  
Windows will not apply PATH changes until you restart.

---

## 🔍 Verify Everything Works

After restarting:

1. Open **Command Prompt** or **Git Bash**  
2. Run:

    python --version  
    pip --version  
    adb version  

If all three commands show version numbers → ✅ **You’re good to go**

---

## 🛑 If It Still Doesn’t Work

### A) Check Python Installation Folder

Go to:

    C:\Users\YOURNAME\AppData\Local\Programs\Python\  

Open the folder inside (for example: `Python311`)  
Use that **exact path** in PATH.

---

### B) Disable Windows Store Python Aliases

1. Open **Settings**  
2. Go to **Apps**  
3. Click **Advanced app settings**  
4. Click **App execution aliases**  
5. Turn **OFF**:

- python.exe  
- python3.exe  
- pip.exe  

Restart your PC.

---

## 🎯 Summary

If NokiaX says:

- `python not found`  
- `pip not found`  
- `adb not found`  

Then:

1. Open **Environment Variables**  
2. Edit **Path**  
3. Add Python and ADB folders  
4. Restart your PC  
5. Verify with:

    python --version  
    pip --version  
    adb version  

---

## 📦 Python / pip Requirements

Install required Python packages:

pip install --upgrade pip  
pip install adb  

> ⚠️ Note:  
> pip install adb is unreliable on some systems.  
> Best practice is installing Android SDK Platform-Tools manually.  
> The script attempts both methods.

---

## 🔗 Install Android SDK Platform-Tools (Recommended)

Platform-Tools provides the official and most reliable version of adb.

Official Website:  
https://developer.android.com/tools/releases/platform-tools  

Why this is recommended:
- Includes adb and fastboot  
- More stable than pip install adb  
- Backward compatible with older Android versions  
- Updated directly by Google  

If you already have Android Studio installed, you can use the copy it installed.  
Otherwise, download the standalone Platform-Tools package.

---

## ⚡ Installation

git clone https://github.com/hdaw1905/nokiax.git  
cd nokiax  
chmod +x nokiax.sh  

---

## ▶️ Run NokiaX

./nokiax.sh  

NokiaX will:

- Check Python and pip  
- Install adb if missing  
- Guide you to enable USB debugging  
- Wait until your phone is connected  
- Remove predefined apps  
- Show a congratulations message 🎉  

---

## ✏️ Customize Which Apps Are Removed

Open:  
remove-list.txt  

Example:

# Social media  
com.facebook.katana  
com.instagram.android  
com.zhiliaoapp.musically  
com.snapchat.android  
com.twitter.android  

# Browsers  
com.android.chrome  
com.sec.android.app.sbrowser  
com.opera.browser  

# Video  
com.google.android.youtube  
com.netflix.mediaclient  

Save and rerun:  
./nokiax.sh  

---

## 🛡 Protect Important Apps

Open:  
keep-list.txt  

Example:

com.android.dialer  
com.android.contacts  
com.android.settings  
com.whatsapp  
com.google.android.apps.maps  

---

## 🧾 Logs

All removed apps are saved to:  
removed.log  

---

## ⚠️ Notes (Important)

- pip install adb is unreliable on some systems  
- Best practice is Android SDK Platform-Tools  
- Script handles both cases  

---

## 🔮 v1.1 Ideas

- Dry-run mode  
- Windows .bat version  
- GUI  
- Restore mode  

---

## ⚠️ Disclaimer

Use this tool at your own risk.

Removing system apps may affect device stability or functionality.  
Always test carefully and keep a backup.

The author is not responsible for any damage caused by misuse of this tool.

---

## ❤️ Philosophy

Less apps.  
Less distraction.  
More life.

---

## ⭐ Tagline

NokiaX — Your smartphone, but dumb again.

---

## 🙌 Credits

Created by Hesham Eina Abdalla  
Inspired by digital minimalism and classic Nokia phones.

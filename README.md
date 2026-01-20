
<img width="1536" height="605" alt="profile" src="https://github.com/user-attachments/assets/90482c33-e985-4de8-879c-56ab4ff571f2" />

**Your smartphone, but dumb again.**

NokiaX is a one-click Bash + ADB tool that transforms any Android smartphone into a Nokia-style minimal phone by removing distracting and non-essential apps.

It removes social media, browsers, video apps, and other addictive software while keeping only basic and important apps like calls, messages, camera, music, radio, games, navigation, and messaging apps.

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

- Linux or macOS (Bash shell)  
- Android device  
- USB cable  
- USB debugging enabled  
- ADB installed (or NokiaX will try to install it)  

---

## ⚡ Installation

Clone the repository and prepare the script:

    git clone https://github.com/yourusername/nokiax.git
    cd nokiax
    chmod +x nokiax.sh

## ▶️ Run NokiaX

Run the script:

    ./nokiax.sh

NokiaX will:

- Check Python and pip  
- Install adb if missing  
- Guide you to enable USB debugging  
- Wait until your phone is connected  
- Remove predefined apps  
- Show a congratulations message 🎉  

---

##  Make Script Executable

Make the script executable:

    chmod +x nokiax.sh

---

## User Workflow (1-Click Experience)

    1) Edit remove-list.txt (optional)
    2) Double-click nokiax.sh or run:
       ./nokiax.sh
    3) Follow on-screen steps
    4) Done 🎉

---

## ✏️ Customize Which Apps Are Removed

Open this file:

    remove-list.txt

Add or remove any Android package name you want.

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

Save the file and rerun:

    ./nokiax.sh

---

## 🛡 Protect Important Apps

Edit:

    keep-list.txt

Any package listed here will NEVER be removed.

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

##  Notes (Important)

- pip install adb is unreliable on some systems  
- Best practice is Android platform-tools  
- Script handles both cases  

---

##  v1.1 Ideas

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


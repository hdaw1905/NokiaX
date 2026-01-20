# NokiaX

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

```bash
git clone https://github.com/yourusername/nokiax.git
cd nokiax
chmod +x nokiax.sh

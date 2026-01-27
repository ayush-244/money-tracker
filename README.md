<div align="center">

<img src="images/splash_screen.png" alt="Money Tracker by Ayush" width="120" />

# 💰 Money Tracker by Ayush

### A beautifully designed, feature-rich personal finance app built with Flutter

[![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-2.12+-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![Firebase](https://img.shields.io/badge/Firebase-Auth-FFCA28?style=for-the-badge&logo=firebase&logoColor=black)](https://firebase.google.com)
[![License: MIT](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](LICENSE)
[![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS-lightgrey?style=for-the-badge)](https://flutter.dev)

**Track every rupee. Understand every pattern. Take control of your finances.**

[📥 Download](#download) · [🚀 Quick Start](#quick-start) · [✨ Features](#features) · [🛠 Tech Stack](#tech-stack) · [📸 Screenshots](#screenshots)

---

</div>

## ✨ Features

<table>
<tr>
<td width="50%">

### 📊 Smart Analytics
- Pie charts & bar graphs for income vs. expense
- Filter by **Today**, **This Week**, **Month**, **Quarter**, **Year**, or **All Time**
- Detailed category-wise breakdown

</td>
<td width="50%">

### 📅 Calendar View
- Visual timeline of all transactions
- Navigate through past months easily
- See daily summaries at a glance

</td>
</tr>
<tr>
<td width="50%">

### 🗂 Custom Categories
- Pre-built categories: Food, Transport, Shopping, Health, Entertainment & more
- Add, edit, and delete your own categories
- Assign custom icons from 1000+ icon set

</td>
<td width="50%">

### 🔐 Security & Privacy
- App lock with PIN / Passcode screen
- Firebase Authentication (Email + Google Sign-In)
- All local data stored securely on-device via SQLite

</td>
</tr>
<tr>
<td width="50%">

### 🌍 13 Languages Supported
English, Hindi, German, French, Spanish, Japanese, Korean, Portuguese, Russian, Turkish, Vietnamese, Chinese (Simplified), Nepali

</td>
<td width="50%">

### 💱 Multi-Currency
- Supports all global currencies
- Auto-detects your device locale
- Switch currency anytime from Settings

</td>
</tr>
<tr>
<td width="50%">

### 📤 Export & Share
- Export your financial report as a shareable file
- Share transactions instantly via any app

</td>
<td width="50%">

### 🎨 Clean Modern UI
- Smooth animations & micro-interactions
- Screen-adaptive layout for all phone sizes
- Consistent indigo + orange design language

</td>
</tr>
</table>

---

## 📸 Screenshots

<table width="100%">
  <tbody>
    <tr>
      <td width="33%" align="center"><img src="https://user-images.githubusercontent.com/72301141/206411105-4a64ada8-2a9c-4804-ad59-59302a6a82c5.jpg" width="200"/><br/><sub><b>Home / Input</b></sub></td>
      <td width="33%" align="center"><img src="https://user-images.githubusercontent.com/72301141/206417378-9da25e84-bf21-401c-bf23-bce3b352311e.jpg" width="200"/><br/><sub><b>Analysis</b></sub></td>
      <td width="33%" align="center"><img src="https://user-images.githubusercontent.com/72301141/206417548-787625af-f4b1-4c9d-8aac-fa9bd7c47bfb.jpg" width="200"/><br/><sub><b>Reports</b></sub></td>
    </tr>
    <tr>
      <td width="33%" align="center"><img src="https://user-images.githubusercontent.com/72301141/206417565-01bc0f8c-27a4-4648-a845-0a7c29a957c2.jpg" width="200"/><br/><sub><b>Calendar View</b></sub></td>
      <td width="33%" align="center"><img src="https://user-images.githubusercontent.com/72301141/206417707-be626efa-6bed-41be-a932-4e7a5aa22039.jpg" width="200"/><br/><sub><b>Categories</b></sub></td>
      <td width="33%" align="center"><img src="https://user-images.githubusercontent.com/72301141/206417743-8a51d828-efe0-4d3e-9f6b-5b16a4f3b086.jpg" width="200"/><br/><sub><b>Settings</b></sub></td>
    </tr>
    <tr>
      <td width="33%" align="center"><img src="https://user-images.githubusercontent.com/72301141/206417756-a979fefe-23f8-4a21-bfa5-7e45745c19f0.jpg" width="200"/><br/><sub><b>Pie Chart</b></sub></td>
      <td width="33%" align="center"><img src="https://user-images.githubusercontent.com/72301141/206417834-25dc5bb4-c099-4d90-81a6-eb4e469bc40e.jpg" width="200"/><br/><sub><b>Income Tracker</b></sub></td>
      <td width="33%" align="center"><img src="https://user-images.githubusercontent.com/72301141/206417851-2ee18113-04bf-48ae-bf83-d377b4517742.jpg" width="200"/><br/><sub><b>Language Select</b></sub></td>
    </tr>
  </tbody>
</table>

---

## 🛠 Tech Stack

| Layer | Technology |
|-------|-----------|
| 📱 Framework | [Flutter](https://flutter.dev) (Dart) |
| 🔥 Auth | [Firebase Authentication](https://firebase.google.com/products/auth) |
| 🗄 Local DB | [SQLite](https://pub.dev/packages/sqflite) via `sqflite` |
| 💾 Preferences | [SharedPreferences](https://pub.dev/packages/shared_preferences) |
| 📈 Charts | [Syncfusion Flutter Charts](https://pub.dev/packages/syncfusion_flutter_charts) |
| 🌐 Localization | Flutter Localizations (13 languages) |
| 🔔 State | [Provider](https://pub.dev/packages/provider) |
| 📐 Responsive | [flutter_screenutil](https://pub.dev/packages/flutter_screenutil) |
| 🔑 Google Sign-In | [google_sign_in](https://pub.dev/packages/google_sign_in) |

---

## 🚀 Quick Start

### Prerequisites

Make sure you have the following installed:

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (v3.x or higher)
- [Android Studio](https://developer.android.com/studio) or [VS Code](https://code.visualstudio.com/) with Flutter extension
- A connected Android/iOS device or emulator

### Installation

```bash
# 1. Clone the repository
git clone https://github.com/ayush-244/mmas-money-tracker.git
cd mmas-money-tracker

# 2. Install dependencies
flutter pub get

# 3. Run the app
flutter run
```

### Firebase Setup (Required for Auth)

1. Go to [Firebase Console](https://console.firebase.google.com) → **Create Project**
2. Add an **Android App** with package name: `com.ayush.money_tracker_ayush`
3. Download `google-services.json` → place it in `android/app/`
4. Enable **Email/Password** and **Google Sign-In** in Firebase → Authentication → Sign-in Methods
5. Run `flutter pub get` and then `flutter run`

---

## 📁 Project Structure

```
lib/
├── main.dart                    # Entry point
└── project/
    ├── app_pages/               # Main screens
    │   ├── input.dart           # Add transactions
    │   ├── analysis.dart        # Charts & analytics
    │   ├── calendar.dart        # Calendar view
    │   ├── report.dart          # Financial reports
    │   ├── others.dart          # Settings
    │   └── ...
    ├── auth_pages/              # Login / Signup screens
    ├── auth_services/           # Firebase auth logic
    ├── classes/                 # Shared widgets & models
    │   ├── constants.dart       # Colors, helpers
    │   ├── input_model.dart     # Transaction data model
    │   └── ...
    ├── database_management/     # SQLite + SharedPrefs
    ├── localization/            # 13-language support
    ├── home.dart                # Bottom navigation shell
    ├── provider.dart            # State management
    └── real_main.dart           # App initialization
```

---

## 🌐 Supported Languages

| 🇺🇸 English | 🇮🇳 Hindi | 🇩🇪 German | 🇫🇷 French |
|:-----------:|:--------:|:---------:|:---------:|
| 🇪🇸 Spanish | 🇯🇵 Japanese | 🇰🇷 Korean | 🇵🇹 Portuguese |
| 🇷🇺 Russian | 🇹🇷 Turkish | 🇻🇳 Vietnamese | 🇨🇳 Chinese |
| 🇳🇵 **Nepali** | | | |

---

## 📥 Download

> 🚧 App Store listing coming soon — stay tuned!

---

## 🤝 Contributing

Contributions are welcome! Here's how to get started:

1. Fork this repository
2. Create a feature branch: `git checkout -b feature/amazing-feature`
3. Commit your changes: `git commit -m 'Add amazing feature'`
4. Push to the branch: `git push origin feature/amazing-feature`
5. Open a Pull Request

---

## 👨‍💻 Author

<div align="center">

**Ayush**

[![GitHub](https://img.shields.io/badge/GitHub-ayush--244-181717?style=for-the-badge&logo=github)](https://github.com/ayush-244)

*Built with ❤️ using Flutter*

</div>

---

## 📄 License

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.

```
MIT License — Copyright (c) 2026 Ayush
```

---

<div align="center">

⭐ **If you found this project useful, please give it a star!** ⭐

</div>

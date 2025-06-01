
# CoinVault 💰

CoinVault is a beautifully designed expense tracking mobile app built with Flutter. It helps users manage income, expenses, and recent transactions with a sleek, dark-themed interface.

## ✨ Features

- 💸 Add, view, and delete income/expense transactions  
- 📊 Real-time balance overview  
- 🌑 Dark aesthetic UI
- 🧠 Uses Flutter’s stateful widgets for smooth, responsive interactions  
- 🚀 Ready for future enhancements like analytics, charts, and user accounts  


## 🔧 Tech Stack

- Flutter (Dart)  
- Material Design 3  
- Local state management (StatefulWidgets)  
- Responsive design

## 📂 Project Structure

```bash
lib/
├── main.dart             # Entry point with global theme
├── login_page.dart       # Login UI screen
├── home_screen.dart      # Main dashboard after login
├── widgets/              # Reusable UI components
└── models/               # Data models for transactions
```

## 🎨 Theming

Defined globally in `main.dart`:

- Background Color: `#181818`  
- Primary (Accent) Color: `#54AC57`  
- Text Inputs & Buttons styled via `ThemeData`

## 🚀 Getting Started

1. Clone the repo:
   ```bash
   git clone https://github.com/Mustangtroy-29/coinvault.git
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

## 🧪 Coming Soon

- Category breakdowns  
- Graphs & spending trends  
- Budget alerts  
- Cloud sync & user accounts

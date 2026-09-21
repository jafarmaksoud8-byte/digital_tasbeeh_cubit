<p align="center">
  <img src="https://raw.githubusercontent.com/jafarmaksoud8-byte/digital_tasbeeh_bloc/main/assets/images/tasbeeh_demo.gif" width="300" alt="Digital Tasbeeh App Demo">
</p>

# 📿 Digital Tasbeeh App

A modern, elegant Islamic Tasbeeh and dhikr counting application built using Flutter and the **Flutter Bloc (Cubit)** state management pattern[cite: 8]. Designed for smooth interactions, custom lists of supplications, round tracking, and clean UI separation.

---

## ✨ Features

* **Cubit State Management:** Efficiently manages state changes including active dhikr navigation, counters, and rounds[cite: 8].
* **Rich Dhikr Collection:** Pre-loaded list of authentic Azkar and Tasbeeh items with forward and backward navigation.
* **Round & Progress Tracking:** Tracks target limits per round and increments counts seamlessly.
* **Modular Architecture:** Clean separation of concerns with reusable custom widgets, views, and centralized color constants.

---

## 🛠️ Tech Stack & Packages

* **Flutter & Dart**
* **flutter_bloc:** For scalable state management logic[cite: 8].
* **bloc:** Core state management package[cite: 8].

---

## 📂 Project Architecture

```text
lib/
│
├── cubit/
│   ├── tasbeeh_cubit.dart
│   └── tasbeeh_state.dart
│
├── constatnt/
│   └── app_color.dart
│
├── ui/
│   ├── views/
│   │   └── home_view.dart
│   └── widgets/
│       ├── container_widget.dart
│       └── text_widget.dart
│
└── main.dart

👨‍💻 Author
* Name: Jafar Maksoud
* Email: jafarmaksoud8@gmail.com

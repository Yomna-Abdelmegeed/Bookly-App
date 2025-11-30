# 📘 Bookly App – Flutter MVVM Architecture

A modern, clean, and scalable **Flutter Book App** built using **MVVM architecture**, **Cubit state management**, and the **Google Books API**.  
The app displays **free programming books** in a horizontal list and **newest Flutter books** in a vertical list.  
Users can open book previews directly using `url_launcher`.

---

## 🚀 Features

### 📚 Book Browsing
- Horizontal list → **Free Programming Books**
- Vertical list → **Newest Flutter Books**
- All data fetched from **Google Books API**

### 🎨 UI & Experience
- Beautiful UI inspired by Bookly design
- Cached images for offline speed
- Smooth animated splash built with animated_text_kit
- Responsive design for all screen sizes

### 🧭 Navigation
- Implemented using **GoRouter**

### 📡 Networking
- API requests handled through **Dio**
- Clean error handling with `Either` (Dartz)

### ⚙️ Architecture
- **MVVM (Model - View - ViewModel)** pattern
- **Cubit** for state management
- **Dependency Injection** using **GetIt**

---
## 🌐 API Information

The app uses the official **Google Books API**:  
`https://www.googleapis.com/books/v1/volumes?`

### Endpoints Used
- **Programming Books:** `q=programming`  
- **Flutter Newest Books:** `q=flutter`

📌 All books displayed are **free to browse** and can be opened using the Google Books preview link.

## 🖼️ Screenshots

| Splash Screen | Home Screen | Book Details | Book Launch / Preview |
|---------------|------------|--------------|----------------------|
| <img src="assets/images/splash.png" width="150"/> | <img src="assets/images/home.png" width="150"/> | <img src="assets/images/details.png" width="150"/> | <img src="assets/images/book_launch.png" width="150"/> |


## 📦 Packages Used

| Package | Version | Purpose |
|---------|---------|---------|
| animated_text_kit | ^4.3.0 | Text animations (splash screen) |
| cached_network_image | ^3.4.1 | Image caching & placeholders |
| dartz | ^0.10.1 | Functional error handling (`Either`) |
| dio | ^5.9.0 | Networking layer |
| equatable | ^2.0.7 | Value equality for models & states |
| flutter_bloc | ^9.1.1 | Cubit / Bloc state management |
| font_awesome_flutter | ^10.9.1 | Icon pack |
| get_it | ^9.1.0 | Dependency Injection |
| go_router | ^16.1.0 | Navigation system |
| google_fonts | ^6.2.1 | Custom fonts |
| url_launcher | ^6.3.2 | Launching preview URL |

---
## 📁 Environment Setup

- No API key required  
- Google Books API is public and free

---

## 👩‍💻 State Management (Cubit)

Each feature has its own Cubit:

- **NewestBooksCubit**  
- **FeaturedBooksCubit**  
- **SimilarBooksCubit**

---

## 🎯 How to Run the App

```bash
git clone https://github.com/your-username/bookly-app.git
cd bookly-app
flutter pub get
flutter run
```

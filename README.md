# Flutter Product List App

This is a basic Flutter application that displays a list of products with images, names, and prices. Users can tap on a product to view more details, and simulate adding it to a cart.

## 📱 Features

- Product list with name, image and price
- "Add to Cart" button logs item to console
- Detail page with navigation
- Static product data (no API)

## 📂 Project Structure

lib/
├── data/
│   └── entity/
│       └── products.dart         # Product model
├── ui/
│   └── views/
│       ├── detailPage.dart       # Product detail screen
│       └── mainPage.dart         # Product list screen
└── main.dart                     # App entry point

assets/
└── images/                       # Product images

## ▶️ How to Run

1. Clone the repository:
   git clone https://github.com/yourusername/flutter_product_list_app.git

2. Navigate to the project folder:
   cd flutter_product_list_app

3. Get dependencies:
   flutter pub get

4. Run the app:
   flutter run

## 🧾 Notes

- Make sure to declare your image assets in `pubspec.yaml`, like:

flutter:
  assets:
    - images/

- Images used: `computer.png`, `glasses.png`, `headphone.png`, `perfume.png`, `watch.png`, `cleaner.png`, `phone.png`


## 📄 License

This project is licensed under the MIT License.


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

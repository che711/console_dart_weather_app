# Console Dart Weather App 🌦️

A simple **console weather application written in Dart** that fetches real-time weather data from an external API and displays it in the terminal.

This project focuses on building CLI tools, working with APIs, and handling data in a clean and structured way.

---

## 📦 Features

* Get current weather by city name
* Fetch real-time data from weather API
* Parse and display JSON response
* Simple and clean CLI interface
* Lightweight and fast execution

Weather console apps typically rely on external APIs (e.g. OpenWeather) and HTTP requests to retrieve live weather data and display it in terminal environments. ([Medium][1])

---

## 🧠 Goals

* Practice Dart outside Flutter
* Learn how to build CLI applications
* Work with HTTP requests and APIs
* Understand JSON parsing and data modeling
* Improve project structure and code readability

---

## 🛠️ Tech Stack

* Dart
* HTTP client (e.g. `http` package)
* Weather API (e.g. OpenWeather / Open-Meteo)
* CLI (console input/output)

---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/che711/console_dart_weather_app.git
cd console_dart_weather_app
```

### 2. Install dependencies

```bash
dart pub get
```

### 3. Run the application

```bash
dart run
```

---

## ⚙️ Configuration

Most weather apps require an API key.

Example:

```dart
const API_KEY = "your_api_key_here";
```

You can get a free API key from:

* https://openweathermap.org/
* https://open-meteo.com/

---

## 📂 Project Structure

```
console_dart_weather_app/
│
├── bin/                # Entry point
├── lib/
│   ├── api/            # API client
│   ├── models/         # Data models
│   ├── services/       # Business logic
│   └── utils/          # Helpers
│
├── pubspec.yaml
└── README.md
```

---

## 💻 Example Usage

```bash
Enter city: Warsaw

Weather in Warsaw:
Temperature: 18°C
Condition: Cloudy
Humidity: 72%
Wind: 10 km/h
```

---

## 🧪 Ideas for Improvements

* Add 5-day forecast
* Add command-line arguments (`--city`, `--units`)
* Improve terminal UI (colors, formatting)
* Add caching for API responses
* Handle errors and retries
* Package as executable (`dart compile exe`)

---

## 📖 Learning Resources

* https://dart.dev/guides
* https://pub.dev/packages/http
* https://openweathermap.org/api

---

## 🤝 Contributing

Contributions are welcome — feel free to improve functionality or refactor the code.

---

## 📄 License

This project is licensed under the MIT License.

[1]: https://medium.com/%40pack.ruble/how-to-create-a-console-application-in-dart-using-the-weather-pack-package-68ed814f1903?utm_source=chatgpt.com "How to create a console application in dart using the weather_pack package? | by Ruble | Medium"

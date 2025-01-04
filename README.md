# Weather App 🌦️  

The **Weather App** is a beautifully designed Flutter application that provides real-time weather information for any city worldwide. Built with simplicity and elegance, it uses the **OpenWeatherMap API** to fetch weather data and dynamically adapts its theme based on the current weather condition. Whether it's sunny, rainy, or snowy, this app ensures a visually engaging and user-friendly experience. 🌍  

---

## Features ✨  

- **Real-Time Weather Data**:  
  - Displays **current temperature**, **min/max temperatures**, and **weather conditions** (e.g., Clear, Rain, Clouds, etc.). 🌡️  
  - Shows the **city name** and the **last updated time**. 🕒  

- **Dynamic Theme**:  
  - Changes the app's theme color based on the weather condition (e.g., blue for clear skies, grey for clouds, etc.). 🎨  

- **Search Functionality**:  
  - Allows users to search for weather information by entering a city name. 🔍  

- **Error Handling**:  
  - Displays user-friendly error messages if the city is not found or if there is a network issue. ❌  

- **Interactive UI**:  
  - Uses **Flutter Bloc** for state management, ensuring a smooth and responsive user experience. 🚀  

---

## Dependencies 📦  

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_bloc: ^8.1.3  # For state management using Cubit.
  dio: ^5.3.3           # For making HTTP requests to the OpenWeatherMap API.
  flutter_dotenv: ^5.1.0 # For loading environment variables (e.g., API keys).
```
---

## Screenshots 📸

<p align="center">
  <img src="screenshots\screenshot1.jpg" width="45%" />
  <img src="screenshots\screenshot3.jpg" width="45%" />
</p>

---

## Installation ⚙️
To run the project locally, follow these steps:
1. Clone the repository:
   ```bash
   git clone https://github.com/azimramadan/weather-app.git
   cd weather-app
2. Add your OpenWeatherMap API key:
   - Create a .env file in the root directory of the project.
   - Add your API key to the .env file as follows:
   ```bash
   API_KEY=your_openweathermap_api_key_here
3. Install Flutter Dependencies:
   ```bash
   flutter pub get
4. Run the Project:
   ```bash
   flutter run

---
Enjoy exploring the Weather App! 🌤️

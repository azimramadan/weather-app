class WeatherInfoModel {
  final double maxTemp;
  final double minTemp;
  final double temp;
  final String city;
  final String weatherMain;
  final String updatedTime;
  final String image;

  WeatherInfoModel(
      {required this.maxTemp,
      required this.minTemp,
      required this.temp,
      required this.city,
      required this.weatherMain,
      required this.updatedTime,
      required this.image});
  factory WeatherInfoModel.fromJson(json, String updatedTime) =>
      WeatherInfoModel(
        maxTemp: json['main']['temp_max'],
        minTemp: json['main']['temp_min'],
        temp: json['main']['temp'],
        city: json['name'],
        weatherMain: json['weather'][0]['main'],
        updatedTime: updatedTime,
        image: getImage(json['weather'][0]['main']),
      );

  static String getImage(String weatherCondtion) {
    switch (weatherCondtion) {
      case 'Clouds':
        return 'assets/images/cloudy.png';
      case 'Clear':
        return 'assets/images/clear.png';
      case 'Snow':
        return 'assets/images/snow.png';
      case 'Rain':
        return 'assets/images/rainy.png';
      case 'Thunderstorm':
        return 'assets/images/thunderstorm.png';
      default:
        return 'assets/images/image.png';
    }
  }
}

import 'package:project/models/weather_info_model.dart';

class WeatherState {}

class FailurWeatherState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  final WeatherInfoModel weatherInfoModel;

  WeatherLoadedState({required this.weatherInfoModel});
}

class InitialWeatherState extends WeatherState {}

class WeatherLoadingState extends WeatherState {}

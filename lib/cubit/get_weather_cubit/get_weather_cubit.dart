import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/cubit/get_weather_cubit/get_weather_cubit_states.dart';

import 'package:project/models/weather_info_model.dart';
import 'package:project/service/weather_info_servece.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(InitialWeatherState());
  String weatherCondition = '';
  getWeather(String cityName) async {
    emit(WeatherLoadingState());
    try {
      WeatherInfoModel weatherInfoModel =
          await GetWeatherInfoService(dio: Dio())
              .getWeatherInfo(city: cityName);
      weatherCondition = weatherInfoModel.weatherMain;
      emit(WeatherLoadedState(weatherInfoModel: weatherInfoModel));
    } catch (e) {
      weatherCondition = 'error';
      emit(FailurWeatherState());
    }
  }
}

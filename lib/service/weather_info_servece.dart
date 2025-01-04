import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:project/models/weather_info_model.dart';

class GetWeatherInfoService {
  final Dio dio;
  final String baseUrl = 'https://api.openweathermap.org/data/2.5';
  final String apiKey = dotenv.env['API_KEY'] ?? '';
  final String unitsTemp = 'metric';

  GetWeatherInfoService({required this.dio});

  Future<WeatherInfoModel> getWeatherInfo({required String city}) async {
    try {
      DateTime requestStartTime = DateTime.now();
      String formattedTime =
          '${requestStartTime.hour.toString().padLeft(2, '0')}:${requestStartTime.minute.toString().padLeft(2, '0')}';

      Response response = await dio
          .get('$baseUrl/weather?q=$city&units=$unitsTemp&appid=$apiKey');
      WeatherInfoModel weatherInfoModel =
          WeatherInfoModel.fromJson(response.data, formattedTime);
      return weatherInfoModel;
    } on DioException catch (e) {
      final String erroMessage =
          e.response?.data['message'] ?? 'opps there was an error, try later';
      log('Exception1');
      throw Exception(erroMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('opps there was an error, try later');
    }
  }
}

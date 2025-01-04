import 'package:flutter/material.dart';
import 'package:project/function/get_theme.dart';
import 'package:project/models/weather_info_model.dart';

class StatusWeatherWidget extends StatelessWidget {
  const StatusWeatherWidget({super.key, required this.weatherInfoModel});
  final WeatherInfoModel weatherInfoModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          getThemeColor(weatherCondition: weatherInfoModel.weatherMain),
          getThemeColor(weatherCondition: weatherInfoModel.weatherMain)[300]!,
          getThemeColor(weatherCondition: weatherInfoModel.weatherMain)[50]!,
          // Theme.of(context).colorScheme.inversePrimary,
          // Theme.of(context).colorScheme.inversePrimary,
          // Theme.of(context).colorScheme.inversePrimary,
          // Theme.of(context).colorScheme.surface,
        ],
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 2,
          ),
          Text(
            weatherInfoModel.city,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'updated at : ${weatherInfoModel.updatedTime}',
            style: const TextStyle(fontSize: 22),
          ),
          const Spacer(
            flex: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset(weatherInfoModel.image),
              const Spacer(),
              Text(
                '${weatherInfoModel.temp.round()}',
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Column(
                children: [
                  Text(
                    'maxTemp:${weatherInfoModel.maxTemp.round()}',
                    style: const TextStyle(fontSize: 15),
                  ),
                  Text(
                    'minTemp:${weatherInfoModel.minTemp.round()}',
                    style: const TextStyle(fontSize: 15),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          Text(
            weatherInfoModel.weatherMain,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(
            flex: 4,
          ),
        ],
      ),
    );
  }
}

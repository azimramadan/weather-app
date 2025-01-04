import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:project/cubit/get_weather_cubit/get_weather_cubit.dart';
import 'package:project/cubit/get_weather_cubit/get_weather_cubit_states.dart';
import 'package:project/function/get_theme.dart';
// import 'package:project/learn/learn_widget.dart';
import 'package:project/screens/home_page.dart';

void main() async {
  // runApp(const LearnWidget());
  await dotenv.load(fileName: ".env");
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: BlocBuilder<GetWeatherCubit, WeatherState>(
        builder: (context, state) {
          return MaterialApp(
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                seedColor: getThemeColor(
                    weatherCondition: BlocProvider.of<GetWeatherCubit>(context)
                        .weatherCondition),
              ),
              useMaterial3: true,
            ),
            darkTheme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                seedColor: getThemeColor(
                    weatherCondition: BlocProvider.of<GetWeatherCubit>(context)
                        .weatherCondition),
                brightness: Brightness.dark,
              ),
              useMaterial3: true,
            ),
            themeMode: ThemeMode.system,
            debugShowCheckedModeBanner: false,
            home: const HomePage(),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/cubit/get_weather_cubit/get_weather_cubit.dart';
import 'package:project/cubit/get_weather_cubit/get_weather_cubit_states.dart';
import 'package:project/screens/search_page.dart';
import 'package:project/widget/no_weather_widget.dart';
import 'package:project/widget/status_weather_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text(
            'Weather App',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (contex) {
                    return const SearchPage();
                  }));
                },
                icon: const Icon(Icons.search),
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: BlocBuilder<GetWeatherCubit, WeatherState>(
          builder: (context, state) {
            if (state is WeatherLoadedState) {
              return StatusWeatherWidget(
                  weatherInfoModel: state.weatherInfoModel);
            } else if (state is WeatherLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is InitialWeatherState) {
              return const NoWeatherWidget();
            } else {
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: Text(
                    'opps there was an error, try letter.',
                    style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).colorScheme.error),
                  ),
                ),
              );
            }
          },
        )
        // : StatusWeatherWidgetBuilder(searchText: searchText),
        );
  }
}

import 'package:_weather/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:_weather/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:_weather/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const Weather());
}

class Weather extends StatelessWidget {
  const Weather({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
        builder: (context) => BlocBuilder<GetWeatherCubit, WeatherState>(
          builder: (context, state) {
            return MaterialApp(
              theme: ThemeData(
                primarySwatch: getThemeColor(
                  BlocProvider.of<GetWeatherCubit>(context)
                      .weatherModel
                      ?.weatherState,
                ),
              ),
              debugShowCheckedModeBanner: false,
              home: HomePage(),
            );
          },
        ),
      ),
    );
  }

  MaterialColor getThemeColor(String? condition) {
    if (condition == null) {
      return Colors.blue;
    }
    switch (condition) {
       case 'Clear':
      return Colors.blueGrey;
      case 'Sunny':
        return Colors.orange;
      case 'Partly cloudy':
        return Colors.lightBlue;
      case 'Cloudy':
        return Colors.grey;
      case 'Overcast':
        return Colors.grey;
      case 'Mist':
        return Colors.grey;
      case 'Patchy rain possible':
        return Colors.lightBlue;
      case 'Patchy snow possible':
        return Colors.lightBlue;
      case 'Patchy sleet possible':
        return Colors.lightBlue;
      case 'Patchy freezing drizzle possible':
        return Colors.lightBlue;
      case 'Thundery outbreaks possible':
        return Colors.amber;
      case 'Blowing snow':
        return Colors.blueGrey;
      case 'Blizzard':
        return Colors.blueGrey;
      case 'Fog':
        return Colors.grey;
      case 'Freezing fog':
        return Colors.grey;
      case 'Patchy light drizzle':
        return Colors.lightBlue;
      case 'Light drizzle':
        return Colors.lightBlue;
      case 'Freezing drizzle':
        return Colors.lightBlue;
      case 'Heavy freezing drizzle':
        return Colors.lightBlue;
      case 'Patchy light rain':
        return Colors.lightBlue;
      case 'Light rain':
        return Colors.lightBlue;
      case 'Moderate rain at times':
        return Colors.lightBlue;
      case 'Moderate rain':
        return Colors.lightBlue;
      case 'Heavy rain at times':
        return Colors.lightBlue;
      case 'Heavy rain':
        return Colors.lightBlue;
      case 'Light freezing rain':
        return Colors.lightBlue;
      case 'Moderate or heavy freezing rain':
        return Colors.lightBlue;
      case 'Light sleet':
        return Colors.lightBlue;
      case 'Moderate or heavy sleet':
        return Colors.lightBlue;
      case 'Patchy light snow':
        return Colors.lightBlue;
      case 'Light snow':
        return Colors.lightBlue;
      case 'Patchy moderate snow':
        return Colors.lightBlue;
      case 'Moderate snow':
        return Colors.lightBlue;
      case 'Patchy heavy snow':
        return Colors.lightBlue;
      case 'Heavy snow':
        return Colors.lightBlue;
      case 'Ice pellets':
        return Colors.blueGrey;
      case 'Light rain shower':
        return Colors.lightBlue;
      case 'Moderate or heavy rain shower':
        return Colors.lightBlue;
      case 'Torrential rain shower':
        return Colors.lightBlue;
      case 'Light sleet showers':
        return Colors.lightBlue;
      case 'Moderate or heavy sleet showers':
        return Colors.lightBlue;
      case 'Light snow showers':
        return Colors.lightBlue;
      case 'Moderate or heavy snow showers':
        return Colors.lightBlue;
      case 'Light showers of ice pellets':
        return Colors.blueGrey;
      case 'Moderate or heavy showers of ice pellets':
        return Colors.blueGrey;
      case 'Patchy light rain with thunder':
        return Colors.amber;
      case 'Moderate or heavy rain with thunder':
        return Colors.amber;
      case 'Patchy light snow with thunder':
        return Colors.amber;
      case 'Moderate or heavy snow with thunder':
        return Colors.amber;
      default:
        return Colors.grey;
    }
  }
}

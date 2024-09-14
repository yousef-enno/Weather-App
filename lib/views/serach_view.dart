
import 'package:_weather/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:_weather/models/weather_model.dart';
import 'package:_weather/services/weather_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatelessWidget {
  SearchPage({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search a City'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: TextField(
            onSubmitted: (value) async {
           var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
           getWeatherCubit.getWeather(cityName: value);
           Navigator.pop(context);
            },
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              labelText: 'Search',
              suffixIcon: Icon(Icons.search),
              hintText: 'Entre City Name',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}



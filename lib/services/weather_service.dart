import 'dart:developer';

import 'package:_weather/models/weather_model.dart';
import 'package:dio/dio.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = 'https://api.weatherapi.com';
  final String apiKey = '75df46cead5d4b5fb5e172603230609';
  WeatherService(this.dio);
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio
          .get('$baseUrl/v1/forecast.json?key=$apiKey&q=$cityName&days=1');
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage =
          e.response?.data['error']['message'] ?? 'oops there was an error';

      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('oops there was an error');
    }
  }
}

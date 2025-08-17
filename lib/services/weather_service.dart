import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  String apiKey = '8703f473dc6a49ca9e3134639251708';
  String baseUrl = 'http://api.weatherapi.com/v1';
  Future<WeatherModel?> getWeather({required String cityName}) async {
    WeatherModel? weather;
    try {
      Uri url = Uri.parse(
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=7',
      );

      http.Response response = await http.get(url);

      Map<String, dynamic> data = jsonDecode(response.body);

      weather = WeatherModel.fromJson(data);
    } catch (e) {
      print(e);
    }

    return weather;
  }
}

import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/model/weather.dart';

class WeatherApiClient {
  String? key = "a4bdf12c9d890428e42c0ab982e05d2d";

  Future<Weather>? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=$key&units=metric");
    var response = await http.get(endpoint);

    var body = jsonDecode(response.body);
    if (kDebugMode) {
      print(Weather.fromJson(body).cityName);
    }
    return Weather.fromJson(body);
  }
}

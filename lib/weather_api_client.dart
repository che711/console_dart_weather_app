import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:console_dart_weather_app/weather.dart';
import 'package:console_dart_weather_app/config.dart';

class WeatherApiClient {
  Future<Weather> getCurrentWeather(String cityName) async {
    final url = 
    '${Config().baseUrl}${Config().currentUrl}?key=${Config().apiKey}&q=$cityName';
    print(url);

    final response = await http.get(Uri.parse(url));

    if (response.statusCode != 200){
      print('Request failed with statusCode: ${response.statusCode}');
    }

    final Map<String, dynamic> jsonResponse = jsonDecode(response.body);

    if (jsonResponse.isEmpty || !jsonResponse.containsKey('current')) {
      throw Exception('Weather data for $cityName not found or invalid');
    }

    return Weather.fromJson(jsonResponse);
  }
}
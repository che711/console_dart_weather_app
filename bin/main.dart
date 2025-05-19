import 'package:console_dart_weather_app/weather_api_client.dart';

void main(List<String> arguments) async {
  if (arguments.length != 1) {
    print('Syntax error bin/main.dart <city>');
    return;
  }

final cityName = arguments.first;
// print(cityName);

final weatherApiClient = WeatherApiClient();
final currentWeather = await weatherApiClient.getCurrentWeather(cityName);
print(currentWeather.tempC);
}



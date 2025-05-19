class Config {
  Config._internal();

  static final Config _instance = Config._internal();

  factory Config() => _instance;
  String apiKey = 'd32d9267a021432982652258251905';

  String baseUrl = 'http://api.weatherapi.com/v1';
  String currentUrl = 'current.json';
  String forecasttUrl = 'forecast.json';

}

class Weather {
  final String lastUpdate;
  final String cityName;
  final String tempC;
  final String feelsLikeC;
  final String condition;
}

Weather({
  required this.lastUpdate,
  required this.cityName,
  required this.tempC,
  required this.feelsLikeC,
  required this.condition,
});


factory Weather.fromJson(Map<String, dynamic> json) {
  final currentData = json['current'];
  final conditionData = currentData['conditions'];
  return Weather(
    lastUpdate: currentData['last_updated'],
    cityName: json['location']['name'],
    tempC: currentData['temp_c'].toDouble(),
    feelsLikeC: currentData['leelslike_c'].toDouble(),
    condition: conditionData['text'],
  );
}





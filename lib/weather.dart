class Weather {
  final String lastUpdate;
  final String cityName;
  final double tempC;  
  final double feelsLikeC;
  final String condition;

  Weather({
    required this.lastUpdate,
    required this.cityName,
    required this.tempC,
    required this.feelsLikeC,
    required this.condition,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    final currentData = json['current'];
    final locationData = json['location'];
    final conditionData = currentData['condition'];  
    
    return Weather(
      lastUpdate: currentData['last_updated'].toString(),
      cityName: locationData['name'].toString(),
      tempC: currentData['temp_c'].toDouble(),
      feelsLikeC: currentData['feelslike_c'].toDouble(), 
      condition: conditionData['text'].toString(),
    );
  }
}

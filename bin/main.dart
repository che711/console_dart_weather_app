void main(List<String> arguments) {
  if (arguments.length != 1) {
    print('Syntax error bin/main.dart <city>');
    return;
  }
}

var myApiKey = '';
final cityName = arguments.first;
print(cityName);
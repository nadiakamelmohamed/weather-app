import 'package:weather/models/weather_model.dart';

class Weather{}
class NoWeather extends Weather{}
class WeatherLoaded extends Weather{
 WeatherModel weatherModel;

  WeatherLoaded({required this.weatherModel});
}
class ErrorWeather extends Weather{
  final String errorMessage;

  ErrorWeather({required this.errorMessage});

}


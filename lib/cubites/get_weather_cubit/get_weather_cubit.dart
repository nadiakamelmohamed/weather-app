

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubites/get_weather_cubit/weather_states.dart';
import 'package:weather/models/weather_model.dart';
import 'package:weather/services/get_weather_data.dart';

class GetWeatherCubit extends Cubit<Weather>{
   WeatherModel? weatherModel;
  GetWeatherCubit():super(NoWeather());

  getWeather({required String country})async{
      try {
  weatherModel=await GetWeatherData().getWeatherData(Country: country);
       emit(WeatherLoaded(weatherModel: weatherModel!));
} on Exception catch (e) {
    emit(ErrorWeather(errorMessage: e.toString()));
}
  }
}
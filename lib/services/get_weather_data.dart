import 'package:dio/dio.dart';
import 'package:weather/models/weather_model.dart';

class GetWeatherData {

 final Dio dio=Dio();
 final String apiKey="37dfaddd758643c5afe154635253107";
 final String baseUrl="http://api.weatherapi.com";

   Future<WeatherModel>getWeatherData({required String Country})async
   {
    try {
  Response response=await dio.get("$baseUrl/v1/forecast.json?key=$apiKey&q=$Country&days=1&aqi=no&alerts=no");
  WeatherModel weatherModel=WeatherModel.fromjson(response.data);
  return weatherModel;
} on DioException catch (e) {
  final String errorMessage=e.response?.data['error']['message']??"OOp's there was an error";
  throw Exception(errorMessage);
  
}catch(e)
{
  throw Exception("OOP's there ia an error");
}

   }

  
}
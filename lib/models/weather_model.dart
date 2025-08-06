class WeatherModel {
  final String cityName;
  final String conditionalState;
  final String? image;
  final double  avDegree;
  final double  minDegree;
  final double  maxDegree;
  final DateTime date;

  WeatherModel({required this.cityName,
   required this.image,
    required this.avDegree, 
    required this.minDegree, 
    required this.maxDegree,
    required this.conditionalState,
     required this.date});

     factory WeatherModel.fromjson(json)
     {
      return WeatherModel(
        cityName: json['location']['name'], 
        conditionalState: json['forecast']['forecastday'][0]['day']['condition']['text'],
        image: json['forecast']['forecastday'][0]['day']['condition']['icon'], 
        avDegree:json['forecast']['forecastday'][0]['day']['avgtemp_c'], 
        minDegree:json['forecast']['forecastday'][0]['day']['mintemp_c'], 
        maxDegree: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
         date: DateTime.parse(json['location']['localtime']));

     }


}
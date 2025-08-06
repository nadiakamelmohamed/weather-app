import 'package:flutter/material.dart';

class NoWeatherWidget extends StatelessWidget {
  const NoWeatherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("there is no weather start",style:TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,)),
          Text("searching now",style:TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,)),
        ],
      ),
    );
  }
}
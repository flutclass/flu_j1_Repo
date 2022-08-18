import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hava_app_stub/screens/location_screen.dart';
import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:hava_app_stub/services/location.dart';
import 'package:hava_app_stub/services/networking.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hava_app_stub/services/weather.dart';
const api_key = '7863fcfa97fb15bab2ed87005549acf4';



class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  // double? longitude;
  // double? latitude;

  Position? _postion;
  @override
  void initState() {
    super.initState();
    getLocation();
    // _getCurrentLocation();
    // getData();
  }
  // void getData() async{
  //   http.Response response =
  //   await http.get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=London&appid=7863fcfa97fb15bab2ed87005549acf4'));
  //   print(response.body);
  //   if (response.statusCode ==200){
  //     String data = response.body;
  //
  //     var temperature = jsonDecode(data)['main']['temp'];
  //     var condition = jsonDecode(data) ['weather'][0]['id'];
  //     var cityName = jsonDecode(data)['name'];
  //     print(temperature);
  //     print(condition);
  //     print(cityName);
  //
  //     // var longtiude = jsonDecode(data)['coord']['lon'];
  //     // var WeatherDescription = jsonDecode(data)['weather'][0]['description'];
  //     // print(WeatherDescription);
  //     // print(longtiude);
  //
  //
  //   }
  //   else{
  //     print(response.statusCode);
  //   }
  //
  // }

void getLocation() async {

  var weatherData = await WeatherModel().getLocationWeather();
   // print(weatherData);
   Navigator.push(context, MaterialPageRoute(builder: (context){
     return LocationScreen(
       locationWeather: weatherData,
     );
   }));

}


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Center(
child:SpinKitDoubleBounce(
  color: Colors.white,
  size: 100.0,
) ,
      ),
    );
    // String myMargin = 'abc';
    // double? myMarginAsDouble ;
    // try{
    //    myMarginAsDouble = double.parse(myMargin);
    //
    // }
    // catch(ex){
    //   print(ex);
    //   // myMarginAsDouble = 50;
    //
    // }
    // return Scaffold(
    //   body: Container(
    //     margin: EdgeInsets.all(myMarginAsDouble ?? 50),
    //
    //   ),
    // );

  }
}

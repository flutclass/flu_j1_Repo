import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:convert';
import 'package:http/http.dart'as http;


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  Position? _postion;
  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
    getData();
  }
  void getData() async{
    http.Response response =
    await http.get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=London&appid=7863fcfa97fb15bab2ed87005549acf4'));
    // print(response.body);
    if(response.statusCode ==200){
      String data = response.body;
      var WeatherDescription = jsonDecode(data)['weather'][0]['description'];
      print(WeatherDescription);

    }
    else{
      print(response.statusCode);
    }

  }
  void _getCurrentLocation() async{
    Position postion = await _determinPostion();
    setState(() {
      _postion = postion;
    });
    print(_postion);
  }
  Future<Position> _determinPostion() async{
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied){
      permission = await Geolocator.requestPermission();
      if(permission == LocationPermission.denied){
        return Future.error(" Location permistions are denied");
      }
    }
    return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
  }




  @override
  Widget build(BuildContext context) {
    String myMargin = 'abc';
    double myMarginAsDouble =30.0;
    try{
       myMarginAsDouble = double.parse(myMargin);

    }
    catch(ex){
      myMarginAsDouble = 50;

    }
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(myMarginAsDouble),
        color: Colors.red,
      ),
    );

  }
}

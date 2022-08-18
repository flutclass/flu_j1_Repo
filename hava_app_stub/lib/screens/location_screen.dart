import 'package:flutter/material.dart';
import 'package:hava_app_stub/screens/city_screen.dart';
import 'package:hava_app_stub/services/weather.dart';
import 'package:hava_app_stub/utilities/constants.dart';

class LocationScreen extends StatefulWidget {
  LocationScreen({required this.locationWeather});
  final dynamic locationWeather;

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  WeatherModel weather = WeatherModel();

  int Tempreture = 0;
  int condition = 0;
  String CityName = "";
  String weatherIcon = "";
  String weatherMessage = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.locationWeather);
    updateUi(widget.locationWeather);
  }

  void updateUi(dynamic weatherData) {
    setState(() {


    double temp = weatherData['main']['temp'];
    Tempreture = temp.toInt();
    condition = weatherData['weather'][0]['id'];
    CityName = weatherData['name'];
    weatherIcon = weather.getWeatherIcon(condition);
    weatherMessage = weather.getMessage(Tempreture);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/location_background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () async {
                      var weatherData = await weather.getLocationWeather();
                      updateUi(weatherData);
                    },
                    child: Icon(
                      Icons.near_me,
                      size: 50.0,
                    ),
                  ),
                  FlatButton(
                    onPressed: () async {
                  var TypedName = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return CityScreen();
                          },
                        ),
                      );
                          if(TypedName !=null){
                            var weatherData = await weather.GetCityweather(TypedName);
                            print(weatherData);
                            updateUi(weatherData);
                            // var waetherData = await weather.
                          }
                    },
                    child: Icon(
                      Icons.location_city,
                      size: 50.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      '${Tempreture}°',
                      style: kTempTextStyle,
                    ),
                    Text(
                      '${weatherIcon}️',
                      style: kConditionTextStyle,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Text(
                  '${weatherMessage}   in ${CityName}',
                  textAlign: TextAlign.right,
                  style: kMessageTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

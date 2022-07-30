import 'package:flutter/material.dart';
import 'dart:math';
class Calculator {

  Calculator({required this.height,required this.weight });
  final int height;
  final int weight;
  double _bmi = 0.0;

  String CalculateBMI(){
    _bmi = weight / pow(height/100 , 2);
    return _bmi.toStringAsFixed(1);
  }

  String getDetail(){
    if(_bmi>=25){
      return "شما وزن بالایی دارید و باید بیشتر ورزش کنید";
    } else if(_bmi>=18.5){
      return "شما وزن متناسبی دارید می توانی بیشتر هم غذا بخورید";
    } else {
      return "شما خیلی لاغری خوش به حالت";
    }
  }
String getResult(){
    if(_bmi>=25) {
      return "چاق";
    }else if (_bmi>=18.5){
      return "متناسب";

    }
    else{
      return "لاغر";
    }
}


}
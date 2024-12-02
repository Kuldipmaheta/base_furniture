import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool isFirstTime = true;

Future <void> saveBool({required bool value}) async{
  SharedPreferences sp = await SharedPreferences.getInstance();
  sp.setBool('isFirstTime', value);
}

Future <bool> getBool() async{
  SharedPreferences sp = await SharedPreferences.getInstance();
  return (sp.getBool('isFirstTime') ?? true);
}




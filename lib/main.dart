import 'package:flutter/material.dart';
import 'package:world_map_project/pages/flashScreen.dart';
import 'package:world_map_project/pages/home.dart';
import 'package:world_map_project/pages/choose_location.dart';
import 'package:world_map_project/pages/loading.dart';
import 'package:world_map_project/pages/log_in.dart';
import 'package:world_map_project/pages/signIN.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/':(context) => FlashScreen(),
      '/login':(context) => LoginPage(),
      '/loading':(context)=> Loading(),
      '/home':(context) => Home(),
      '/ChooseLo':(context) => ChooseLocation(),
      '/sign-in':(context) => SignIN(),
    },

    debugShowCheckedModeBanner: false,
  ));
}

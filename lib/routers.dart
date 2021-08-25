import 'package:flutter/material.dart';
import 'package:myshop/Screens/DrawerManuScreen/LoginScreen.dart';
import 'package:myshop/Screens/DrawerManuScreen/SettingScreen.dart';
import 'package:myshop/Screens/HomeScreen.dart';

Map<String, WidgetBuilder> routers = {
  "/home": (BuildContext context) => HomeScreen(),
  "/login": (BuildContext context) => LoginScreen(),
  "/settings": (BuildContext context) => SettingScreen(),
};

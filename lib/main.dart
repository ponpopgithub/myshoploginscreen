import 'package:flutter/material.dart';
import 'package:myshop/Theme/app_theme.dart';
import 'package:myshop/routers.dart';

var initUrl;

void main() {
  initUrl = "/home";
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.primaryTheme
          .copyWith(scaffoldBackgroundColor: Theme.of(context).cardTheme.color),
      initialRoute: initUrl,
      routes: routers,
    );
  }
}

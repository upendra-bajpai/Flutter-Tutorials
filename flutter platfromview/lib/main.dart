import 'package:flutter/material.dart';
import 'native_view.dart';
import 'utils/consts.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Native Platform',
          theme: ThemeData(
        primarySwatch: Colors.brown,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: bacground,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.brown,
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: NativeView(),
    );
  }
}


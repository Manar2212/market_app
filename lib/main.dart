import 'package:flutter/material.dart';
import 'package:market_app/screens/home_screen.dart';
import 'package:market_app/screens/main_ui.dart';

void main(){
  runApp(MarketApp());
}

class MarketApp extends StatelessWidget {
  const MarketApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MainUi(),
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
    );
  }
}

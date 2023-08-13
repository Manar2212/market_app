import 'package:flutter/material.dart';
import 'package:market_app/constants.dart';
import 'package:market_app/screens/auth/login_screen.dart';
import 'package:market_app/screens/auth/signUp_screen.dart';
import 'package:market_app/screens/auth/splash_screen.dart';
import 'package:market_app/screens/auth/welcome_screen.dart';
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
      routes: {
        'SplashScreen' :(context) => SplashScreen(),
        MainUi.id :(context)=> MainUi(),
        WelcomeScreen.id :(context) => WelcomeScreen(),
        LoginScreen.id :(context) => LoginScreen(),
        SignUpScreen.id :(context) => SignUpScreen(),
      },
      initialRoute: 'SplashScreen',
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
    );
  }
}

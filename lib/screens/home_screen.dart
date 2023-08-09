import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:market_app/constants.dart';
import 'package:market_app/screens/cart_screen.dart';
import 'package:market_app/screens/favorite_screen.dart';
import 'package:market_app/screens/profile_screen.dart';
 class HomeScreen extends StatefulWidget {
   const HomeScreen({Key? key}) : super(key: key);

   @override
   State<HomeScreen> createState() => _HomeScreenState();
 }

 class _HomeScreenState extends State<HomeScreen> {

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Center(child: Text('Home Screen'),)
     );
   }
 }



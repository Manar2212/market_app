import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:market_app/screens/profile_screen.dart';

import '../constants.dart';
import 'cart_screen.dart';
import 'favorite_screen.dart';
import 'home_screen.dart';

class MainUi extends StatefulWidget {
  const MainUi({Key? key}) : super(key: key);
  static String id = 'mainUI';

  @override
  State<MainUi> createState() => _MainUiState();
}

class _MainUiState extends State<MainUi> {
  int selectedItem = 0;

  double bottomNavBarHeight = 60;
  List<TabItem> tabItems = List.of([
    TabItem(
      Icons.home_outlined,
      "Home",
      kTheme,
    ),
    TabItem(
      Icons.person,
      "Profile",
      kTheme,
    ),
    TabItem(
      FontAwesomeIcons.heart,
      "Favorite",
      kTheme,
    ),
    TabItem(
      //FontAwesomeIcons.shoppingCart,
      Icons.add_shopping_cart,
      "Cart",
      kTheme,
    ),
  ]);

  List<Widget> screens = [HomeScreen(),ProfileScreen(),FavoriteScreen(),CartScreen(),];

  late CircularBottomNavigationController _navigationController;
  @override
  void initState() {
    super.initState();
    _navigationController = CircularBottomNavigationController(selectedItem);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(child: screens.elementAt(selectedItem),),
          Align(alignment: Alignment.bottomCenter, child: bottomNav())
        ],
      ),
    );
  }
  Widget bottomNav() {
    return CircularBottomNavigation(
      tabItems,
      controller: _navigationController,
      selectedPos: selectedItem,
      barHeight: bottomNavBarHeight,
      barBackgroundColor: Colors.white,
      circleStrokeWidth: 0,
      circleSize: 55,
      // backgroundBoxShadow: <BoxShadow>[
      //   BoxShadow(color: Colors.black45, blurRadius: 10.0),
      // ],
      animationDuration: Duration(milliseconds: 300),
      selectedCallback: (int? selectedPos) {
        setState(() {
          this.selectedItem = selectedPos ?? 0;
        });
      },
    );
  }
}

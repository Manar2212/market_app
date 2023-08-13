import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:market_app/constants.dart';
import 'package:market_app/screens/auth/welcome_screen.dart';
import 'package:market_app/screens/main_ui.dart';
import 'package:market_app/widgets/custome_splash.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  PageController controller = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          PageView(
            controller: controller,
            onPageChanged: (page){
              setState(() {
                currentPage = page;
              });
            },
            children: [
              CustomeSplash(
                image: 'assets/images/SplashSreenImages/markus-spiske-i5tesTFPBjw-unsplash 1.png',
                title: 'Welcome to',
                showLogo: true,
                NextFuncton: (){
                  controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
                },
              ),
              CustomeSplash(
                showLogo: false,
                isCanBack: true,
                BackFunction: (){
                  controller.previousPage(duration:const Duration(milliseconds: 500), curve: Curves.easeInOut);
                },
                title: 'Buy Quality\nDairy Products',
                image: 'assets/images/SplashSreenImages/markus-spiske-i5tesTFPBjw-unsplash 1 (1).png',
                NextFuncton: (){
                  controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
                },
              ),
              CustomeSplash(
                showLogo: false,
                isCanBack: true,
                BackFunction: (){
                  controller.previousPage(duration:const Duration(milliseconds: 500), curve: Curves.easeInOut);
                },
                title: 'Buy Premium\nQuality Fruits',
                image: 'assets/images/SplashSreenImages/markus-spiske-i5tesTFPBjw-unsplash 1 (2).png',
                NextFuncton: (){
                  controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
                },
              ),
              CustomeSplash(
                showLogo: false,
                isCanBack: true,
                BackFunction: (){
                  controller.previousPage(duration:const Duration(milliseconds: 500), curve: Curves.easeInOut);
                },
                title: 'Get Discounts\nOn All Products',
                image: 'assets/images/SplashSreenImages/markus-spiske-i5tesTFPBjw-unsplash 1 (3).png',
                NextFuncton: (){
                  Navigator.pushNamed(context, WelcomeScreen.id);
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:40),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmoothPageIndicator(controller: controller, count: 4,
                    effect: WormEffect(
                      spacing: 10,
                      dotColor: Colors.black26,
                      activeDotColor: kTheme,
                    ),
                  ),
                ],),
            ),
          ),
        ],
      ),
    );
  }
}


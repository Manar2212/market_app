import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market_app/constants.dart';
import 'package:market_app/screens/auth/login_screen.dart';
import 'package:market_app/screens/auth/signUp_screen.dart';
import 'package:market_app/widgets/custome_secondary_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static String id = 'welcomescreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/SplashSreenImages/beautiful-female-with-shopping-cart-walking-by-supermarket-freezer-choosing-what-buy 1.png',
          fit: BoxFit.cover,
          width: double.infinity,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 310,
              decoration: BoxDecoration(
                color: kSecondaryTheme,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )
              ),
              child: ListView(
                padding: EdgeInsets.all(20),
                children: [
                  Text('Welcome',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  Text('Lorem ipsum dolor sit amet, consetetur\n sadipscing elitr, sed diam nonumy',style: TextStyle(color: Colors.black26)),
                  CustomeSecondaryButton(name: 'Continue with google', image: 'assets/images/SplashSreenImages/google.png', background: Colors.white, fontColor: Colors.black,
                  onTap: (){},
                  ),
                  CustomeSecondaryButton(name: 'Create an account', image: 'assets/images/SplashSreenImages/Vector (3).png', background: kTheme, fontColor: Colors.white,
                  onTap: (){
                    Navigator.pushNamed(context, SignUpScreen.id);
                  },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?',style: TextStyle(color: Colors.grey),),
                      TextButton(onPressed: (){
                        Navigator.pushNamed(context, LoginScreen.id);
                      }, child: Text('Login',style: TextStyle(color: Colors.black),)),
                    ],
                  )

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

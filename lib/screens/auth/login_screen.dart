import 'package:flutter/material.dart';
import 'package:market_app/constants.dart';
import 'package:market_app/screens/auth/signUp_screen.dart';
import 'package:market_app/screens/home_screen.dart';
import 'package:market_app/screens/main_ui.dart';
import 'package:market_app/widgets/custome_text_formfield.dart';

import '../../widgets/custome_primary_button.dart';
import '../../widgets/custome_secondary_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
static String id = 'loginscreen';
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPassword = true;
  GlobalKey<FormState> formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/SplashSreenImages/woman-with-shopping-list-standing-by-fridge-supermarket-checking-cart 1.png',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 410,
              decoration: BoxDecoration(
                  color: kSecondaryTheme,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )
              ),
              child: Form(
                key: formkey,
                child: ListView(
                  padding: EdgeInsets.all(20),
                  children: [
                    Text('Welcome back',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    Text('Sign in with your account',style: TextStyle(color: Colors.black26)),
                    CustomeTextFormField(
                      labelText: 'Email Address',
                      hintText: 'Email Address',
                      prefixIcon: Icons.email_outlined,
                      textInputType: TextInputType.emailAddress,
                    ),
                    CustomeTextFormField(prefixIcon: Icons.lock_outline, labelText: 'Password', hintText: 'Password',
                    textInputType: TextInputType.text,
                      isObscure: isPassword,
                      suffixIcon: isPassword? Icons.visibility_outlined : Icons.visibility_off_outlined,
                      suffixPressed: (){
                      setState(() {
                        isPassword = !isPassword;
                      });
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(onPressed: (){}, child: Text('Forget password'))
                      ],
                    ),
                    CustomePrimaryButton(name: 'Login', background: kTheme, fontColor: Colors.white,
                    onTap: (){
                      if(formkey.currentState!.validate()){
                        Navigator.pushNamed(context,MainUi.id);
                      }
                    },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don\'t have an account ?',style: TextStyle(color: Colors.grey),),
                        TextButton(onPressed: (){
                          Navigator.pushNamed(context, SignUpScreen.id);
                        }, child: Text('Sign up',style: TextStyle(color: Colors.black),)),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

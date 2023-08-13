import 'package:flutter/material.dart';
import 'package:market_app/screens/auth/login_screen.dart';

import '../../constants.dart';
import '../../widgets/custome_primary_button.dart';
import '../../widgets/custome_text_formfield.dart';
import '../main_ui.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static String id = 'signupscreen';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/SplashSreenImages/portrait-female-person-supermarket-holding-fruit-smiling 1.png',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height:450,
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
                    Text('Create account',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    Text('Quickly create account',style: TextStyle(color: Colors.black26)),
                    CustomeTextFormField(
                      labelText: 'Email Address',
                      hintText: 'Email Address',
                      prefixIcon: Icons.email_outlined,
                      textInputType: TextInputType.emailAddress,
                    ),
                    CustomeTextFormField(prefixIcon: Icons.phone, labelText: 'Phone number', hintText: 'Phone number',
                    textInputType: TextInputType.phone,
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
                    CustomePrimaryButton(name: 'Signup', background: kTheme, fontColor: Colors.white,
                      onTap: (){
                        if(formkey.currentState!.validate()){
                          Navigator.pushNamed(context,MainUi.id);
                        }
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
          ),
        ],
      ),
    );
  }
}

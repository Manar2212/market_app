import 'package:flutter/material.dart';

import '../constants.dart';

class CustomeSplash extends StatelessWidget {
   CustomeSplash({required this.image,required this.title,required this.showLogo,required this.NextFuncton,this.isCanBack,this.BackFunction ,Key? key}) : super(key: key);
String? image,title;
bool? showLogo,isCanBack;
VoidCallback? NextFuncton,BackFunction;
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Image.asset(image!,fit: BoxFit.cover,width: double.infinity,),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isCanBack == true ? TextButton(onPressed: BackFunction, child: Text('Back',style: TextStyle(color: Colors.grey),)) : Text(''),
                TextButton(onPressed: NextFuncton, child: Text('Next',style: TextStyle(color: kTheme),)),
              ],),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(title!,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                   //Image.asset('assets/images/SplashSreenImages/bigCart 1.png'),
                  showLogo == true?  Image.asset('assets/images/SplashSreenImages/bigCart 1.png') : Text(''),
                  Text('Lorem ipsum dolor sit amet, consetetur\n sadipscing elitr, sed diam nonumy',style: TextStyle(color: Colors.black26),)
                ],
              ),
            ),
          ),

        ]
    );
  }
}

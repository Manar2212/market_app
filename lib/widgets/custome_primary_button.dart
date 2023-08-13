import 'package:flutter/material.dart';

class CustomePrimaryButton extends StatelessWidget {
  CustomePrimaryButton({Key? key,required this.onTap,required this.name, required this.background,required this.fontColor}) : super(key: key);

  String? name;
  Color? background;
  Color? fontColor;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 7),
        padding: EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: background!.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 7,
                offset: Offset(0, 5),
              ),
            ],
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [
                  background!.withOpacity(0.4),
                  background!,
                ]
            ),
            color: background,
            borderRadius: BorderRadius.circular(7)
        ),
        child: Center(child:
        Text(name!,style: TextStyle(fontWeight: FontWeight.w500,color: fontColor),)
        ),

      ),
    );
  }
}
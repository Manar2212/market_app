import 'package:flutter/material.dart';

class CustomeTextFormField extends StatelessWidget {
   CustomeTextFormField({Key? key,required this.prefixIcon,required this.labelText,required this.hintText,required this.textInputType,this.isObscure = false,this.suffixIcon,this.suffixPressed}) : super(key: key);

   String? labelText, hintText;
   IconData? prefixIcon;
   IconData? suffixIcon;
   VoidCallback? suffixPressed;
   bool? isObscure;
   TextInputType? textInputType;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 7,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
      ),
      child: TextFormField(
        obscureText: isObscure!,
        keyboardType: textInputType,
        validator: (data){
          if(data!.isEmpty){
            return 'Field is required';
          }
        },
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          prefixIcon: Icon(prefixIcon),
          suffixIcon: IconButton(
            icon: Icon(suffixIcon),
            onPressed: suffixPressed,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
   CategoryItem({Key? key, this.image,  this.title, this.color}) : super(key: key);
    String? image;
    Color? color;
    String? title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        CircleAvatar(
            child: Image.asset(image!),
          radius: 30,
          backgroundColor: color!,
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Text(title!),
        ),
      ],
    );
  }
}

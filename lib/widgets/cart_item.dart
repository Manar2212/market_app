import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class CartItem extends StatelessWidget {
 CartItem({Key? key,this.title,this.weight,this.price,this.image,this.color}) : super(key: key);

 String? image,price,title,weight;
 Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 0.3,
            blurRadius: 2,
            offset: Offset(1, 2),
          ),
        ],
      ),
      child: Card(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10,right: 10),
              child: Align(alignment: Alignment.topRight,
                  child: Icon(FontAwesomeIcons.heart)),
            ),
            Stack(
              children: [
                CircleAvatar(backgroundColor: color!,radius: 50,
                  child: Image.asset(image!,),
                ),
                //Image.asset(image!),
              ],),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text('\$'+price!,style: TextStyle(color: kTheme),),
            ),
            Text(title!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            Text(weight!,style: TextStyle(color: Colors.grey),),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.shopping_bag_outlined,color: kTheme),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Add to cart'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

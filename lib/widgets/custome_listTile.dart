import 'package:flutter/material.dart';

class CustomeListTile extends StatelessWidget {
   CustomeListTile({Key? key,this.title,this.trailing}) : super(key: key);
   String? title;
   IconData? trailing;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      trailing: Icon(trailing),
    );
  }
}

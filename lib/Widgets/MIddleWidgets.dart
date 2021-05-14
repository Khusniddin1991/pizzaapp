


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MiddleHeaders extends ChangeNotifier{



  Widget textFaw(BuildContext context){
    return RichText(
      text: TextSpan(
          text:"Favourite ",style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 28,

      ),children: [
        TextSpan(
          text:"dishes ?",style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.grey,
          fontSize: 22,
        ),
        )
      ]
      ),
    );
  }




}
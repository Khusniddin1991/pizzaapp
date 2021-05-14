import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pizzadilevery/View/MyHomePage.dart';
import 'package:sizer/sizer.dart';




class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3),()=>Navigator.pushReplacement(context, PageTransition(child:MyHomePage(), type: PageTransitionType.fade)));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height:30.h,
              width:  100.w,
              child: Lottie.asset("images/animation/slice.json"),
            ),SizedBox(height: 10,),
            RichText(text:TextSpan(text: "Pizza",style: TextStyle(
              color: Colors.purple,fontSize: 50,fontWeight: FontWeight.bold
            ),children: [
              TextSpan(text:"Delivery",style: TextStyle(
                  color: Colors.cyan,fontSize: 50,fontWeight: FontWeight.bold
              ))
            ]))
          ],
        ),
      ),


    );
  }
}

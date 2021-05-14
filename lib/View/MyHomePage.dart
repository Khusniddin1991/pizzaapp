import 'package:flutter/material.dart';
import 'package:pizzadilevery/Widgets/Headers.dart';
import 'package:pizzadilevery/Widgets/MIddleWidgets.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Headers().appBar(context),
            Headers().headerText(context),
              Headers().headerMenu(context),
              MiddleHeaders().textFaw(context),
              Headers().getdata(context, "favourite")

          ],),
        ),
      ),
    );
  }
}

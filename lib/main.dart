import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pizzadilevery/Widgets/Headers.dart';
import 'package:pizzadilevery/Widgets/MIddleWidgets.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';


import 'Controller/FetchData.dart';
import 'View/SplashPage.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, screenType) {
          return MultiProvider(providers:[
            ChangeNotifierProvider.value(value:Headers(),)
            , ChangeNotifierProvider.value(value:MiddleHeaders()),
            ChangeNotifierProvider<ManageData>(create:(c)=>ManageData())
          ],child: MaterialApp(
            home: SplashPage()
            ,debugShowCheckedModeBanner: false,
          ),);
        }
    );
  }
}
// MaterialApp(
// title: 'Flutter Demo',
// theme: ThemeData(
// primarySwatch: Colors.blue,
// ),
// home: SplashPage(),
// )
//

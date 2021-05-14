



import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';
import 'package:pizzadilevery/Controller/FetchData.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Headers extends ChangeNotifier{



  Widget appBar(BuildContext context){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){}, icon:Icon(FontAwesomeIcons.userAlt)),
          Row(
            children: [
              Icon(FontAwesomeIcons.locationArrow),
              SizedBox(width: 5,),
              Text("New Police  Area",style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 12.0,
                fontWeight: FontWeight.w300
              ),)
            ],
          ),
          IconButton(onPressed:(){

          }, icon:Icon(FontAwesomeIcons.search,color: Colors.black,),),

        ],
      ),
    );

  }


  Widget headerText(BuildContext context){
    return Container(
      padding: EdgeInsets.only(right:15),
      constraints: BoxConstraints(
        maxWidth: 300.0
      ),child: RichText(
      text: TextSpan(
         text:"What would you like",style: TextStyle(
        fontWeight: FontWeight.w300,
        color: Colors.black,
        fontSize: 29,

      ),children: [
        TextSpan(
            text:"To eat ?",style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.black,
          fontSize: 29,
        ),
        )
      ]
      ),
    ),
    );
  }
   Widget headerMenu(BuildContext context){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8,horizontal: 8)
      ,child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: (){},
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.redAccent,
                  blurRadius: 15
                )
              ],
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: Colors.grey.shade100
            ),
            height: 40,
            width: 100,
            child: Center(
              child: Text(
                "All Pizza "
              ),
            ),
          ),
        ),
      GestureDetector(
        onTap: (){},
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.lightBlueAccent,
                    blurRadius: 15
                )
              ],
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: Colors.grey.shade100
          ),
          height: 40,
          width: 100,
          child: Center(
            child: Text(
                "Pizza"
            ),
          ),
        ),
      ),
      GestureDetector(
        onTap: (){},
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.lightBlueAccent,
                    blurRadius: 15
                )
              ],
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: Colors.grey.shade100
          ),
          height: 40,
          width: 100,
          child: Center(
            child: Text(
                "Pasta"
            ),
          ),
        ),
      )
      ],),
    );
   }


   Widget getdata(BuildContext context,String collection){
    return Container(
      height: 300,
      child: FutureBuilder(
        future:Provider.of<ManageData>(context,listen: false).fetchData(collection) ,
        builder: (BuildContext context, AsyncSnapshot  snapshot){
          if(snapshot.connectionState==ConnectionState.waiting){
            return Center(child:Lottie.asset("asset/animation/name.json"),);
            
          }
          return ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: snapshot.data.length,itemBuilder:(c,i){
            return GestureDetector(
              onTap: (){},
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          height: 180,
                          child: Image.network(snapshot.data[i].data()["image"]),
                        ),
                        Positioned(
                          left: 140,
                            child: IconButton(
                              icon: Icon(EvaIcons.heart),
                              onPressed: (){},
                            ))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(snapshot.data[i].data()["name"],style: TextStyle(
                        fontSize: 18,fontWeight: FontWeight.w200,color: Colors.black
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(snapshot.data[i].data()["category"],style: TextStyle(
                          fontSize: 16,fontWeight: FontWeight.w800,color: Colors.cyan
                      ),),
                    )


                  ],
                ),
              ),
            );

          }
          );
        },
      ),
    );
   }





}
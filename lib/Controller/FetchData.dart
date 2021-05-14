


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class ManageData extends ChangeNotifier{

  FirebaseFirestore firestore=FirebaseFirestore.instance;


  Future fetchData(String collection)async{
    QuerySnapshot querySnapshot=await firestore.collection(collection).get();
    return querySnapshot.docs;
  }










}

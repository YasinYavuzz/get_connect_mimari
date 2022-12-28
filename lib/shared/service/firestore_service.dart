import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class FireStoreService extends GetxService {
Future<FireStoreService> init() async {
    return this;
  }

 

 


  firestoreAdd(String title,String content) async{
    await FirebaseFirestore.instance.collection("blog").add({
"title":title,
"content":content
    });
  }
}
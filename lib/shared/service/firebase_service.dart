import 'package:firebase_core/firebase_core.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';

import '../../firebase_options.dart';

class FirebaseService extends GetxService{
  Future init () async{
    await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
    return
     this;
  }
}
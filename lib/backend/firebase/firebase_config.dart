import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAJ2UU1CGNOl_AjpzDNBpZ65oOIW1G8I58",
            authDomain: "validasi-49844.firebaseapp.com",
            projectId: "validasi-49844",
            storageBucket: "validasi-49844.appspot.com",
            messagingSenderId: "926855886070",
            appId: "1:926855886070:web:267a9b01ee4c34b29228d7",
            measurementId: "G-DXSDL9MDHK"));
  } else {
    await Firebase.initializeApp();
  }
}

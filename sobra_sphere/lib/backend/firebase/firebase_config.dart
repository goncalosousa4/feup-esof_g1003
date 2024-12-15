import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDzqsqg65oIG-kWC5FisQ8waHxiLs-WrJA",
            authDomain: "sobrasphere-db.firebaseapp.com",
            projectId: "sobrasphere-db",
            storageBucket: "sobrasphere-db.appspot.com",
            messagingSenderId: "1000195415513",
            appId: "1:1000195415513:web:bb589e74a2c9c3803d4dc8"));
  } else {
    await Firebase.initializeApp();
  }
}

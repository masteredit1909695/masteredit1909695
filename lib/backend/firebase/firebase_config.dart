import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAPelCAJk9jGXq0HyfXRuRxMrs-dUZV6iI",
            authDomain: "masteredit1909695-b0f84.firebaseapp.com",
            projectId: "masteredit1909695-b0f84",
            storageBucket: "masteredit1909695-b0f84.appspot.com",
            messagingSenderId: "908130376555",
            appId: "1:908130376555:web:5a580ea08b722afb044a2e",
            measurementId: "G-QTPL19SQET"));
  } else {
    await Firebase.initializeApp();
  }
}

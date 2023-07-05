import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAK4DgahfGGgakcXhM8OlxZXD86991HAiM",
            authDomain: "thehaji-hayubi-test.firebaseapp.com",
            projectId: "thehaji-hayubi-test",
            storageBucket: "thehaji-hayubi-test.appspot.com",
            messagingSenderId: "505146379797",
            appId: "1:505146379797:web:725d47b9ab1bf48146881c",
            measurementId: "G-WHKBV8PMM5"));
  } else {
    await Firebase.initializeApp();
  }
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDOfXLqAZlVTq9B13r1gtvSChQy5TjHo2w",
            authDomain: "mukmeen-db.firebaseapp.com",
            projectId: "mukmeen-db",
            storageBucket: "mukmeen-db.appspot.com",
            messagingSenderId: "885455555650",
            appId: "1:885455555650:web:30e13f23afb0bc2dfa31db",
            measurementId: "G-MNG1ZT2SLW"));
  } else {
    await Firebase.initializeApp();
  }
}

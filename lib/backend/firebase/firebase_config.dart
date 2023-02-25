import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBuyP6zDk7KNh2p-Yx57acke2E6wXGtn3k",
            authDomain: "module-95ca6.firebaseapp.com",
            projectId: "module-95ca6",
            storageBucket: "module-95ca6.appspot.com",
            messagingSenderId: "652851182753",
            appId: "1:652851182753:web:aa8cf1bcbaac603f4b84e0"));
  } else {
    await Firebase.initializeApp();
  }
}

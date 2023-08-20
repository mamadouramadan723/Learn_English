import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDn10xKPyt1V9Wubj4xgtF0Y1UfP5vVC_Q",
            authDomain: "learn-english-2008232340.firebaseapp.com",
            projectId: "learn-english-2008232340",
            storageBucket: "learn-english-2008232340.appspot.com",
            messagingSenderId: "214139196259",
            appId: "1:214139196259:web:fb2e799867b54f5b433956",
            measurementId: "G-G6BPFQKSRF"));
  } else {
    await Firebase.initializeApp();
  }
}

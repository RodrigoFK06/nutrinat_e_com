import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDdVA2yYVfVXKcUg80qMVlBzQLce6ZiPAU",
            authDomain: "nutrinat-e-com-oh1eyk.firebaseapp.com",
            projectId: "nutrinat-e-com-oh1eyk",
            storageBucket: "nutrinat-e-com-oh1eyk.appspot.com",
            messagingSenderId: "59482166375",
            appId: "1:59482166375:web:871d0a529cd3977b5ff0c2"));
  } else {
    await Firebase.initializeApp();
  }
}

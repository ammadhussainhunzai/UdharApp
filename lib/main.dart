import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:udhar_app/onboarding(start).dart';
import 'package:udhar_app/signup_form.dart';
import 'package:udhar_app/splash_screen.dart';
import 'package:udhar_app/welcome_screen.dart';

import 'firebase_options.dart';
import 'login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(home: SplashScreen(),
        debugShowCheckedModeBanner: false,
      );
  }
}
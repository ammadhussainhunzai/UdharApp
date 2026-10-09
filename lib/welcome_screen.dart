import 'package:flutter/material.dart';
import 'package:udhar_app/step_1.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Logo
            Image.asset(
              'assets/logo.png',
              height: 65,
              width: 65,
            ),

            const SizedBox(height: 25),

            // App Name
            const Text(
              'UdhaarGo App',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 10),
             Text(
              "Welcome to the Bakki App! Let's get\nstarted.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF5F6673),
                height: 1.4,
              ),
            ),
            SizedBox(height: 60,),
            ElevatedButton(
              onPressed: () { Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => step_1(),
                ),
              );},
              style: ElevatedButton.styleFrom(
                backgroundColor:  Color(0xFF1557D6),
                foregroundColor: Colors.white,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child:  Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
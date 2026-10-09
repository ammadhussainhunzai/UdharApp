import 'package:flutter/material.dart';
import 'package:udhar_app/signup_form.dart';
import 'package:udhar_app/signup_screen_ua.dart';
import 'package:udhar_app/step_1.dart';
class step_3 extends StatelessWidget {
  const step_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image3.png',
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),

            SizedBox(height: 25),

            Text(
              'Get Business Insights',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            SizedBox(height: 10),
            Text(
              "View your total outstanding, payment\n history, and other reports to understand\n your business better.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF5F6673),
                height: 1.4,
              ),
            ),
            SizedBox(height: 120,),
            SizedBox(
              width: 200,
              height: 40,
              child: ElevatedButton(
                onPressed: () { Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignupScreenUa(),
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
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
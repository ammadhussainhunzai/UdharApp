import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:udhar_app/signup_screen_ua.dart';
class LoginScreenUa extends StatelessWidget {
  const LoginScreenUa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding:  EdgeInsets.all(20),

        child: Column(
          children: [

             SizedBox(height: 40),
            Image.asset(
              'assets/logo.png',
              height: 80,
            ),

             SizedBox(height: 20),
             Text(
              'Welcome Back!',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

             SizedBox(height: 8),

             Text(
              'Login to manage your daily ledger',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),

             SizedBox(height: 35),

             Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Email Address',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(height: 8),

            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your Email',
                prefixIcon:  Icon(Icons.email_outlined),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

             SizedBox(height: 20),

             Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Password',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

             SizedBox(height: 8),

            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Enter your password',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

             SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor:  Color(0xff0757D9),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child:  Text(
                  'Login  →',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

             SizedBox(height: 30),

            RichText(
              text: TextSpan(
                style:  TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
                children: [
                   TextSpan(
                    text: "Don't have an account? ",
                  ),

                  TextSpan(
                    text: 'Sign Up',
                    style:  TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>  SignupScreenUa(),
                          ),
                        );
                      },
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:udhar_app/login_screen_ua.dart';

class SignupScreenUa extends StatelessWidget {
  const SignupScreenUa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F7FF),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/logo.png',
                  height: 70,
                ),
              ),

               SizedBox(height: 20),

               Center(
                child: Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

               SizedBox(height: 8),

               Center(
                child: Text(
                  'Start managing your credit and transactions\nsecurely',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ),

               SizedBox(height: 30),

               Text(
                'Full Name',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),

               SizedBox(height: 6),

              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your Email',
                  prefixIcon:  Icon(Icons.person_outline),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

               SizedBox(height: 15),

               Text(
                'Email Address',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),

               SizedBox(height: 6),

              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter password',
                  prefixIcon:  Icon(Icons.email_outlined),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

               SizedBox(height: 15),

               Text(
                'Password',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),

              const SizedBox(height: 6),

              TextField(
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Create a strong password',
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

               SizedBox(height: 45),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor:  Color(0xff0757D9),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Sign Up  →',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

               SizedBox(height: 15),
               Center(
                child: Text(
                  'By signing up, you agree to Udhaar’s Terms of Service\n'
                      '& Privacy Policy',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                ),
              ),

               SizedBox(height: 30),

              Center(
                child: RichText(
                  text:  TextSpan(
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                    children: [
                      TextSpan(
                        text: 'Already have an account? ',
                      ),
                      TextSpan(
                        text: 'Login',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>  LoginScreenUa(),
                              ),
                            );
                          },
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
class splash extends StatelessWidget {
  const splash({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: SizedBox(
          width: 250,
          height: 55,
          child: ElevatedButton(onPressed:() {
            showDialog(context: context, builder: (context) {
              {
                return AlertDialog(
                  title: Text('Logout'),
                  content: Text('Are you sure you want to logout'),
                  actions: [
                    TextButton(onPressed: () {
                      Navigator.pop(context);
                    },
                      child: Text('OK'),
                    ),
                    TextButton(onPressed: () {
                      Navigator.pop(context);
                    },
                      child: Text('Push'),
                    ),
                    TextButton(onPressed: () {
                      Navigator.pop(context);
                    },
                      child: Text('Cancel'),
                    ),
                  ],
                );
              }
            },);
          },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF6C63FF),
              foregroundColor: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Text('Submit',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
            ),
          ),
       ),
     ),
    );
  }
}

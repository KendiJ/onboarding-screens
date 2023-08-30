import 'package:flutter/material.dart';

class VeryficationCode extends StatelessWidget {
  const VeryficationCode({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Enter Verification Code",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Text("We just sent you a code to reset your password"),
            SizedBox(height: 20),
            
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'veryfication_code.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Forgot Password",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Enter your email adress to reset your password"),
            ),
            const Center(
                child: Image(
              image: AssetImage("assets/images/forgot_pass.png"),
            )),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter your email",
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 400,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple[200],
                  shadowColor: Colors.grey,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const VeryficationCode()));
                },
                child: const Text("Continue"),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 400,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shadowColor: Colors.grey,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Cancel",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

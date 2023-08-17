import 'package:flutter/material.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 100, 20, 10),
          child: Column(
            children: [
              Container(
                height: 40,
                width: 300,
                color: Colors.grey[350],
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.apple),
                      Text("Login with Apple"),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 40,
                width: 300,
                color: Colors.grey[350],
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.facebook),
                      Text("Login with Google"),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const Divider(thickness: 1),
              const SizedBox(height: 40),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[350],
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.email),
                      hintText: "Enter your email",
                    ),
                  )),
              const SizedBox(height: 20),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[350],
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      hintText: "Enter your password",
                    ),
                  )),
              const SizedBox(height: 40),
              Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[350],
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Forgot password?",style: TextStyle(color: Colors.black),),
                ),
              ),
              const SizedBox(height: 40),
              Container(
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.green[100],
                  ),
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Login", style: TextStyle(color: Colors.black),),
                ),
              ),
              const SizedBox(height: 20),
              const Text("By sisning up, you agree with our Terms of Service and Privacy Policy")
            ],
          ),
        ),
      ),
    );
  }
}

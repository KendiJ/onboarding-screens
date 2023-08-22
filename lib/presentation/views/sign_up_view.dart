import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:  BoxDecoration(
          color: Colors.grey[350],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: "Enter your name",
                    ),
                  ),
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.email),
                      hintText: "Enter your email",
                    ),
                  ),
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      hintText: "Enter your Password",
                    ),
                  ),
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: const ListTile(
                    leading:  Icon(Icons.lock),
                    title:  TextField(
                      decoration: InputDecoration(
                        hintText: "Enter your Password",
                      ),
                    ),
                    trailing: Icon(Icons.visibility),
                  )

                  // child: const TextField(
                  //   decoration: InputDecoration(
                  //     icon: Icon(Icons.lock),
                  //     hintText: "Confirm your Password",
                  //   ),
                  // ),
                ),
            ),
          ],
        )
      ),
    );
  }
}

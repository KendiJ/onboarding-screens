import 'package:flows/presentation/views/sign_up_view.dart';
import 'package:flutter/material.dart';

import 'login_view.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Welcome here", style: TextStyle(color: Colors.black)),
            backgroundColor: Colors.purple[100],
            centerTitle: true,
            bottom: const TabBar(tabs: [
              Tab( 
                text: "Login",
              ),
              Tab(
                text: "Sign Up",
              ),
            ]),
          ),
          body: const TabBarView(
            children: [
              LogInView(),
              SignUpView(),
            ],
          ),),
    );
  }
}

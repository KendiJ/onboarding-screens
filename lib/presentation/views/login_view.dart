import 'package:flows/presentation/cubits/login/login_cubit.dart';
import 'package:flows/presentation/cubits/login/login_state.dart';
import 'package:flows/presentation/views/forgot_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogInView extends StatelessWidget {
  LogInView({super.key});
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            success: (user) {
              print('Login Successful');
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(loading: () {
            return const CircularProgressIndicator();
          }, orElse: () {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 350,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple[50],
                      shadowColor: Colors.grey,
                    ),
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.facebook, color: Colors.black),
                        SizedBox(width: 10),
                        Text(
                          "Apple",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 350,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple[50],
                      shadowColor: Colors.grey,
                    ),
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.facebook, color: Colors.black),
                        SizedBox(width: 10),
                        Text(
                          "Google",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                          margin:
                              const EdgeInsets.only(left: 10.0, right: 15.0),
                          child: const Divider(
                            color: Colors.black,
                            height: 50,
                          )),
                    ),
                    const Text("or continue with email"),
                    Expanded(
                      child: Container(
                          margin:
                              const EdgeInsets.only(left: 15.0, right: 10.0),
                          child: const Divider(
                            color: Colors.black,
                            height: 50,
                          )),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 20, 20, 0.5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.email),
                    title: TextField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        hintText: "Enter your Email",
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.lock),
                    title: TextField(
                      controller: passwordController,
                      decoration: const InputDecoration(
                        hintText: "Enter your Password",
                      ),
                    ),
                    trailing: const Icon(Icons.visibility),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 220),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const ForgotPassword()));
                    },
                    child: const Text("Forgot Password?"),
                  ),
                ),
                SizedBox(
                  width: 350,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple[50],
                      shadowColor: Colors.grey,
                    ),
                    onPressed: () {
                      context.read<LoginCubit>().login(
                          email: emailController.text,
                          password: passwordController.text);
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 10),
                        Text(
                          "Login",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0.5),
                  child: Text(
                      "By continuing you agree to our Terms of Use and Privacy Policy"),
                ),
              ],
            );
          });
        },
      ),
    );
  }
}

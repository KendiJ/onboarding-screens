import 'package:flows/presentation/views/home_page.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool value = false;

  final _formKey = GlobalKey<FormState>();
  // final TextEditingController _passwordController = TextEditingController();
  // final TextEditingController _confirmPasswordController = TextEditingController();

  late String _password;
  double _strength = 0;

  String _displayText = 'Please enter your password';

  RegExp numberReg = RegExp(r'[0-9].*');
  RegExp letterReg = RegExp(r'[a-zA-Z].*');

  void _checkPassword(String value) {
    _password = value.trim();

    if (_password.isEmpty) {
      setState(() {
        _strength = 0;
        _displayText = 'Please enter your password';
      });
    } else if (_password.length < 6) {
      setState(() {
        _strength = 1 / 4;
        _displayText = 'Weak password';
      });
    } else if (_password.length < 8) {
      setState(() {
        _strength = 2 / 4;
        _displayText = 'Medium password';
      });
    } else {
      if (!letterReg.hasMatch(_password) || !numberReg.hasMatch(_password)) {
        setState(() {
          _strength = 3 / 4;
          _displayText = 'Strong password';
        });
      } else {
        setState(() {
          _strength = 1;
          _displayText = 'Very strong password';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
            decoration: BoxDecoration(
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
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your name";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
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
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your email";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
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
                    child: TextFormField(
                      onChanged: (value) => _checkPassword(value),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your password";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        icon: Icon(Icons.lock),
                        hintText: "Enter your Password",
                      ),
                    ),
                  ),
                ),
                LinearProgressIndicator(
                  value: _strength,
                  color: _strength <= 1 / 4
                      ? Colors.red
                      : _strength == 2 / 4
                          ? Colors.orange
                          : _strength == 3 / 4
                              ? Colors.blue
                              : Colors.green,
                ),
                Text(
                  _displayText,
                  style: const TextStyle(fontSize: 18),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: ListTile(
                      leading: const Icon(Icons.lock),
                      title: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please confirm your password";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          hintText: "Confirm your Password",
                        ),
                      ),
                      trailing: const Icon(Icons.visibility),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Checkbox(
                        value: value, 
                        onChanged: (bool ? value ){
                          setState(() {
                            this.value = value!;
                          });
                          
                        }),
                      const Text("I agree to the terms and conditions"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 40,
                    width: 300,
                    child: ElevatedButton(
                      onPressed: _strength < 1 / 2
                          ? null
                          : () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            const HomePage()));
                              }
                            },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple[300],
                      ),
                      child: const Text(
                        "Sign Up",
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

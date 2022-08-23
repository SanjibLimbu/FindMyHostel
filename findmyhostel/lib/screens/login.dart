import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();

  bool _isObscure = true;
  // editing controller
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/login.jpg"),
              Container(
                padding: const EdgeInsets.only(left: 40, right: 40, bottom: 10),
                child: Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),

                      ///username start
                      TextFormField(
                        key: const ValueKey('username'),
                        controller: usernameController,
                        validator: RequiredValidator(errorText: 'required*'),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFFF2F2F2),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFFF2F2F2),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          filled: true,
                          fillColor: const Color(0xFFF2F2F2),
                          prefixIcon: const Icon(Icons.person),
                          border: InputBorder.none,
                          hintText: "Username",
                          hintStyle: Theme.of(context).textTheme.bodyText2,
                          contentPadding: const EdgeInsets.fromLTRB(
                            20.0,
                            15.0,
                            20.0,
                            15.0,
                          ),
                        ),
                      ),

                      ///username end
                      const SizedBox(
                        height: 15,
                      ),

                      ///password start
                      TextFormField(
                        key: const ValueKey('password'),
                        controller: passwordController,
                        validator: RequiredValidator(errorText: 'required*'),

                        // obscureText: true,
                        obscureText: _isObscure,

                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFFF2F2F2),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFFF2F2F2),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          filled: true,
                          fillColor: const Color(0xFFF2F2F2),
                          hintText: "Password",
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: IconButton(
                            key: const ValueKey('show_hide'),
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                            icon: Icon(
                              _isObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          ),
                          contentPadding: const EdgeInsets.fromLTRB(
                            20.0,
                            15.0,
                            20.0,
                            15.0,
                          ),
                          border: InputBorder.none,
                          hintStyle: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),

                      ///password end
                      const SizedBox(
                        height: 15,
                      ),

                      //forgot password
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/reset_password',
                              arguments: <String, String>{
                                'email': usernameController.text.trim()
                              });
                        },
                        child: const Text(
                          "Forgot your password?",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      //forgot password end

                      const SizedBox(
                        height: 40,
                      ),
                      //login button
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                          key: const ValueKey('loginButton'),
                          onPressed: () {
                            Navigator.pushNamed(context, "/home");
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                            // primary: Colors.orange,
                            primary: const Color.fromARGB(255, 5, 76, 208),
                            shape: const StadiumBorder(),
                          ),
                        ),
                      ),
                      //login button end

                      const SizedBox(
                        height: 10,
                      ),
                      // ElevatedButton(
                      //   style: ElevatedButton.styleFrom(
                      //     primary: const Color(0xFFDD4839),
                      //     shape: const StadiumBorder(),
                      //     minimumSize: const Size(
                      //       double.infinity,
                      //       50,
                      //     ),
                      //   ),
                      //   onPressed: null,
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     children: [
                      //       Image.asset('assets/images/google.png'),
                      //       const SizedBox(
                      //         width: 20,
                      //       ),
                      //       // const Text('Login with Google'),
                      //     ],
                      //   ),
                      // ),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFFDD4839),
                          shape: const StadiumBorder(),
                          minimumSize: const Size(
                            double.infinity,
                            50,
                          ),
                        ),
                        onPressed: () {},
                        icon: Image.asset(
                            'assets/images/google.png'), //icon data for elevated button
                        label: const Text("Login with Google"), //label text
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      ///sign up
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text("Don't have an account?"),
                            Text(
                              " Sign Up",
                              style: TextStyle(
                                // color: Colors.orange,
                                color: Color.fromARGB(255, 5, 76, 208),
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),
                      //sign up end
                      // const SizedBox(
                      //   height: 50,
                      // ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

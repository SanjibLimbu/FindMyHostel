import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpState();
}

class _SignUpState extends State<SignUpScreen> {
  final _formkey = GlobalKey<FormState>();
  bool _isObscure = true;
  bool _isObscure2 = true;

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController fullnameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              
              Image.asset(
                'assets/images/signup.jpg',
                // height: 200,
                // width: 500,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 50,
                ),
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      ///name field start
                      TextFormField(
                        controller: fullnameController,
                        validator: RequiredValidator(errorText: '*required'),
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
                              color: Color(0xFFF2F2F2),
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
                          border: InputBorder.none,
                          hintText: "Name",
                          hintStyle: Theme.of(context).textTheme.bodyText2,
                          prefixIcon: const Icon(Icons.person),
                          contentPadding: const EdgeInsets.fromLTRB(
                            20.0,
                            15.0,
                            20.0,
                            15.0,
                          ),
                        ),
                      ),
                      //name end

                      const SizedBox(
                        height: 15,
                      ),

                      //userName start
                      TextFormField(
                        controller: usernameController,
                        validator: MultiValidator([
                          RequiredValidator(errorText: '*required'),
                          MinLengthValidator(5, errorText: '*min length is 5'),
                        ]),
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
                              color: Color(0xFFF2F2F2),
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
                          border: InputBorder.none,
                          hintText: "Username",
                          hintStyle: Theme.of(context).textTheme.bodyText2,
                          prefixIcon: const Icon(Icons.person),
                          contentPadding: const EdgeInsets.fromLTRB(
                            20.0,
                            15.0,
                            20.0,
                            15.0,
                          ),
                        ),
                      ),
                      //username end
                      const SizedBox(
                        height: 15,
                      ),

                      //email start
                      TextFormField(
                        controller: emailController,
                        validator: MultiValidator([
                          EmailValidator(
                            errorText: 'enter a valid email address',
                          ),
                          RequiredValidator(
                            errorText: '*required',
                          ),
                          MinLengthValidator(
                            6,
                            errorText: 'minimum length is 6',
                          ),
                        ]),
                        keyboardType: TextInputType.emailAddress,
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
                              color: Color(0xFFF2F2F2),
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
                          border: InputBorder.none,
                          hintText: "Email",
                          hintStyle: Theme.of(context).textTheme.bodyText2,
                          prefixIcon: const Icon(Icons.email),
                          contentPadding: const EdgeInsets.fromLTRB(
                            20.0,
                            15.0,
                            20.0,
                            15.0,
                          ),
                        ),
                      ),
                      //email end

                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: passwordController,
                        validator: MultiValidator([
                          RequiredValidator(
                            errorText: '*required',
                          ),
                          MinLengthValidator(
                            6,
                            errorText: 'minimum length is 6',
                          ),
                          MaxLengthValidator(
                            20,
                            errorText: 'maximum length is 20',
                          ),
                        ]),
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
                              color: Color(0xFFF2F2F2),
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
                          border: InputBorder.none,
                          hintText: "Password",
                          hintStyle: Theme.of(context).textTheme.bodyText2,
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: IconButton(
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
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: confirmpasswordController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "*required";
                          }
                          if (value != passwordController.text) {
                            return "password does not match";
                          }
                          return null;
                        },
                        obscureText: _isObscure2,
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
                              color: Color(0xFFF2F2F2),
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
                          border: InputBorder.none,
                          hintText: "Confirm Password",
                          hintStyle: Theme.of(context).textTheme.bodyText2,
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isObscure2 = !_isObscure2;
                              });
                            },
                            icon: Icon(
                              _isObscure2
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
                        ),
                      ),
                      //passwprd end

                      const SizedBox(
                        height: 35,
                      ),

                      //sign button
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () async {},
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(255, 5, 76, 208),
                            shape: const StadiumBorder(),
                          ),
                        ),
                      ),
                      //sign button end
                      const SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Already have an account?",
                            ),
                            Text(
                              " Login",
                              style: TextStyle(
                                // color: Colors.orange,
                                color: Color.fromARGB(255, 5, 76, 208),
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 10,
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

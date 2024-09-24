import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_course/Utils/utils.dart';
import 'package:firebase_course/view/auth/login_screen.dart';
import 'package:firebase_course/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "SignUp",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        hintText: "email",
                        prefixIcon: Icon(Icons.email),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "enter password";
                        }
                        return null;
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      controller: _passwordController,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "password",
                        prefixIcon: Icon(Icons.password),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "enter password";
                        }
                        return null;
                      }),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            RoundedButton(
              title: "Sign Up",
              ontap: () {
                if (_formKey.currentState!.validate()) {
                  _auth
                      .createUserWithEmailAndPassword(
                    email: _emailController.text
                        .toString(), // Just a regular string
                    password: _passwordController.text
                        .toString(), // Just a regular string
                  )
                      .then((value) {
                    // Handle successful registration, e.g., navigate to another screen
                    Utils()
                        .showCustomSnackBar(context, "Successfully registered");
                  }).catchError((error) {
                    // Handle error
                    Utils().showCustomSnackBar(context, error.toString());
                  });
                }
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("already have an account?"),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: const Text('Login'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

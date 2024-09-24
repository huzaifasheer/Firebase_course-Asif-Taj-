import 'dart:async';

import 'package:firebase_course/view/auth/sign_up_screen.dart';
import 'package:flutter/material.dart';

class SplashScreenServices {
  isLogin(BuildContext context) {
    // Use Timer instead of Timer.periodic to navigate only once after 2 seconds
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => const SignUpScreen()), // Navigate only once
      );
    });
  }
}

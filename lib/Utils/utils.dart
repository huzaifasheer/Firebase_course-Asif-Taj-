import 'package:flutter/material.dart';

class Utils {
  void showCustomSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 2),
      backgroundColor: Colors.blue,
      behavior: SnackBarBehavior.floating, // Makes the snackbar float
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(10.0), // Customize the border radius here
      ),
      margin: const EdgeInsets.only(
          bottom: 50.0,
          left: 20.0,
          right: 20.0), // Adds some margin for better visibility
    );

    // Show the snackbar
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

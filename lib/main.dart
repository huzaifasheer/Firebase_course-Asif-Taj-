import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_course/spalsh_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // // Initialize Firebase Messaging
  // final firebaseMessagingService = FireBaseMessagingService();
  // await firebaseMessagingService
  //     .initNotification(); // Call the method to initialize notifications
  // NotificationServices().initNotification();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SpalshScreen(),
    );
  }
}

// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCWzZXkWqEX6rCy0MSvxbdxUPBPPuBrJmE',
    appId: '1:315047258980:web:c8346379305c6e70f0a871',
    messagingSenderId: '315047258980',
    projectId: 'fir-course-d8985',
    authDomain: 'fir-course-d8985.firebaseapp.com',
    storageBucket: 'fir-course-d8985.appspot.com',
    measurementId: 'G-LBJH03M2HY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAPl2SdMOxjuNZ_ZMiiDQK9-SLiOKn7SAU',
    appId: '1:315047258980:android:0931ab74865792a8f0a871',
    messagingSenderId: '315047258980',
    projectId: 'fir-course-d8985',
    storageBucket: 'fir-course-d8985.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCR31W8Dc0FPcYMGcEALzMSKFzii4UlpXY',
    appId: '1:315047258980:ios:320010123223977cf0a871',
    messagingSenderId: '315047258980',
    projectId: 'fir-course-d8985',
    storageBucket: 'fir-course-d8985.appspot.com',
    iosBundleId: 'com.example.firebaseCourse',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCR31W8Dc0FPcYMGcEALzMSKFzii4UlpXY',
    appId: '1:315047258980:ios:320010123223977cf0a871',
    messagingSenderId: '315047258980',
    projectId: 'fir-course-d8985',
    storageBucket: 'fir-course-d8985.appspot.com',
    iosBundleId: 'com.example.firebaseCourse',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCWzZXkWqEX6rCy0MSvxbdxUPBPPuBrJmE',
    appId: '1:315047258980:web:333f9f7ab52ce671f0a871',
    messagingSenderId: '315047258980',
    projectId: 'fir-course-d8985',
    authDomain: 'fir-course-d8985.firebaseapp.com',
    storageBucket: 'fir-course-d8985.appspot.com',
    measurementId: 'G-2T4NS3P1P5',
  );
}
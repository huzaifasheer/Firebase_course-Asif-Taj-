// import 'package:firebase_messaging/firebase_messaging.dart';

// class NotificationServices {
//   FirebaseMessaging messaging = FirebaseMessaging.instance;

//   void requestNotificationPermission() async {
//     NotificationSettings settings = await messaging.requestPermission(
//       alert: true,
//       announcement: true,
//       badge: true,
//       carPlay: true,
//       criticalAlert: true,
//       provisional: true,
//       sound: true,
//     );

//     if (settings.authorizationStatus == AuthorizationStatus.authorized) {
//       print("User granted Permission");
//     } else if (settings.authorizationStatus ==
//         AuthorizationStatus.provisional) {
//       print("User granted provisional Permission");
//     } else {
//       print("User denied Permission");
//     }
//   }

//   // Guide user to app settings to enable/disable notifications
//   // void openAppSettings() {
//   //   messaging.getNotificationSettings().then((settings) {
//   //     print('Current Notification Status: ${settings.authorizationStatus}');
//   //   });
//   //   // Add logic to direct users to app settings to manage notification permissions if needed.
//   // }

// // Fcm token or device token
//   Future<String> getDeviceToken() async {
//     String? token = await messaging.getToken();
//     return token ?? ''; // Return an empty string if token is null
//   }
// }

//  // heytec youtube channel

// // import 'package:firebase_course/notification_screen.dart';
// // import 'package:firebase_messaging/firebase_messaging.dart';
// // import 'package:flutter/material.dart';

// // Future<void> handleBackgroundMessage(RemoteMessage messaging) async {
// //   print("Title: ${messaging.notification?.title}");
// //   print("Body: ${messaging.notification?.body}");
// //   print("Payload: ${messaging.data}");
// //   // Explicitly return
// //   return; // or Future.value();
// // }

// // class NotificationServices {
// //   final _firebaseMessaging = FirebaseMessaging.instance;

// //   Future<void> initNotification() async {
// //     // Request permission
// //     //the FCM token or Device
// //     await _firebaseMessaging.requestPermission(
// //       alert: true,
// //       announcement: true,
// //       badge: true,
// //       carPlay: true,
// //       criticalAlert: true,
// //       provisional: true,
// //       sound: true,
// //     );
// //     // Get  token and await it
// //     String? fcmToken = await _firebaseMessaging.getToken();
// //     if (fcmToken != null) {
// //       print('Device token: $fcmToken');
// //     } else {
// //       print('Failed to get FCM token');
// //     }
// //     // Set background message handler
// //     FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
// //   }

// //   //To Navigate a specific screen  using notification

  

// // }

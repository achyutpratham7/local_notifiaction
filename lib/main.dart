import 'package:flutter/material.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:local_notification/awsome_notification.dart';

import 'MyHomePage.dart';

void main() {
  AwesomeNotifications().initialize(
    null,
    [
      NotificationChannel(
          channelGroupKey: 'reminders',
          channelKey: 'instant_notification',
          channelName: 'Basic Instant Notification',
          channelDescription:
              'Notification channel that can trigger notification instantly.',
          defaultColor: const Color(0xFF9D50DD),
          ledColor: Colors.deepPurple),
    ],
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AwsomeNotification(),
    );
  }
}

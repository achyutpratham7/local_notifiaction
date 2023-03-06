import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:local_notification/service.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  NotificationsService notificationsService = NotificationsService();
  @override
  void initState() {
    super.initState();
    notificationsService.intialiseNotifications();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Local Notification"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white),
                  onPressed: () {
                    notificationsService.send("title", "body");
                  },
                  child: const Text("Send notification"))
            ],
          ),
        ),
      ),
    );
  }
}
//add
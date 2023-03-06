import 'package:flutter/material.dart';
import 'package:local_notification/notify.dart';

class AwsomeNotification extends StatefulWidget {
  const AwsomeNotification({super.key});

  @override
  State<AwsomeNotification> createState() => _AwsomeNotificationState();
}

class _AwsomeNotificationState extends State<AwsomeNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awsome Notifications"),
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
                    Notify.instantNotify();
                  },
                  child: const Text("Send notification"))
            ],
          ),
        ),
      ),
    );
  }
}

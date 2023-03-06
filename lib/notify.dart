import 'dart:math';

import 'package:awesome_notifications/awesome_notifications.dart';

class Notify {
  static Future<bool> instantNotify() async {
    final AwesomeNotifications awesomeNotifications = AwesomeNotifications();
    return awesomeNotifications.createNotification(
      content: NotificationContent(
          id: Random().nextInt(100),
          title: "Happy Holi",
          body: "Notification that delivers instantly on trigger.",
          channelKey: 'instant_notification',
          notificationLayout: NotificationLayout.BigPicture,
          bigPicture:
              'https://img.freepik.com/free-vector/hand-drawn-people-celebrating-holi-festival_23-2147756582.jpg?w=740&t=st=1678093590~exp=1678094190~hmac=400bba8d26a8dc4f40d6549177adeb4f9ef5244310bff6b2b1ac6c0dbcd3e122'),
    );
  }
}

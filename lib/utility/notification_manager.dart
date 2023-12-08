import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class NotificationManager {
  static void success(String description, String title, BuildContext context) {
    ElegantNotification.success(
      height: 125,
      width: 125,
      description: Text(description),
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(fontWeight: FontWeight.bold),
      ),
    ).show(context);
  }

  static void failure(String description, String title, BuildContext context) {
    ElegantNotification.error(
      description: Text(description),
      title: Text(title),
    ).show(context);
  }

  static void info(String description, String title, BuildContext context) {
    ElegantNotification.info(
      height: 125,
      width: 125,
      description: Text(description),
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(fontWeight: FontWeight.bold),
      ),
    ).show(context);
  }
}

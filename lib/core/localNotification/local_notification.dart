import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotification {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  LocalNotification() {
    var initializationSettingsAndroid =
        new AndroidInitializationSettings('app_icon.png');
    var initializationSettingsIOS = new IOSInitializationSettings();
    var initializationSettings = new InitializationSettings(
        initializationSettingsAndroid, initializationSettingsIOS);
    flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
    flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }
  static LocalNotification _instance;

  static LocalNotification getInstance({name, age}) {
    if (_instance == null) {
      _instance = LocalNotification();
      return _instance;
    }
    return _instance;
  }

  sendNow(String title, String body) async {
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
        'your channel id', 'your channel name', 'your channel description',
        importance: Importance.Max, priority: Priority.High, ticker: 'ticker');
    var iOSPlatformChannelSpecifics = IOSNotificationDetails();
    var platformChannelSpecifics = NotificationDetails(
        androidPlatformChannelSpecifics, iOSPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.show(
        0, title, body, platformChannelSpecifics);
  }

  Future setDailyNotification(
      int hour, int minute, int id, String title, String body) async {
    var time = Time(hour, minute, 0);
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
        'repeatDailyAtTime channel id',
        'repeatDailyAtTime channel name',
        'repeatDailyAtTime description');
    var iOSPlatformChannelSpecifics = IOSNotificationDetails();
    var platformChannelSpecifics = NotificationDetails(
        androidPlatformChannelSpecifics, iOSPlatformChannelSpecifics);

    await flutterLocalNotificationsPlugin.showDailyAtTime(
        id, title, body, time, platformChannelSpecifics);
  }

  void deleteNotificationPlan(int id) {
    flutterLocalNotificationsPlugin.cancel(id);
  }

  void deleteAllNotificationPlan() {
    flutterLocalNotificationsPlugin.cancelAll();
  }

  Future<List<PendingNotificationRequest>> showNotificationPlans() async {
    var pendingNotificationRequests =
        await flutterLocalNotificationsPlugin.pendingNotificationRequests();
    return pendingNotificationRequests;
  }
}

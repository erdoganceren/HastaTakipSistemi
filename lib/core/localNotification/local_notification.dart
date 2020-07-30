import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotification {
  FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin;

  LocalNotification() {
    var initializationSettingsAndroid =
        new AndroidInitializationSettings('app_icon');
    var initializationSettingsIOS = new IOSInitializationSettings();
    var initializationSettings = new InitializationSettings(
        initializationSettingsAndroid, initializationSettingsIOS);
    _flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
    _flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }
  static LocalNotification _instance;

  static LocalNotification getInstance({name, age}) {
    if (_instance == null) {
      _instance = LocalNotification();
      return _instance;
    }
    return _instance;
  }

  setOnSelectNotification(Function f) async {
    var initializationSettingsAndroid =
        new AndroidInitializationSettings('app_icon');
    var initializationSettingsIOS = new IOSInitializationSettings();
    var initializationSettings = new InitializationSettings(
        initializationSettingsAndroid, initializationSettingsIOS);
    await _flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: (String payload) => f(payload));
  }

  sendNow(String title, String body, String payload) async {
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
        'your channel id', 'your channel name', 'your channel description',
        importance: Importance.Max, priority: Priority.High, ticker: 'ticker');
    var iOSPlatformChannelSpecifics = IOSNotificationDetails();
    var platformChannelSpecifics = NotificationDetails(
        androidPlatformChannelSpecifics, iOSPlatformChannelSpecifics);
    await _flutterLocalNotificationsPlugin
        .show(0, title, body, platformChannelSpecifics, payload: payload);
  }

  Future setDailyNotification(
      int hour, int minute, int id, String title, String body) async {
    var time = Time(hour, minute, 0);
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
        'repeatDailyAtTime channel id',
        'repeatDailyAtTime channel name',
        'repeatDailyAtTime description',
        importance: Importance.Max,
        priority: Priority.High,
        ticker: 'ticker');
    var iOSPlatformChannelSpecifics = IOSNotificationDetails();
    var platformChannelSpecifics = NotificationDetails(
        androidPlatformChannelSpecifics, iOSPlatformChannelSpecifics);

    await _flutterLocalNotificationsPlugin.showDailyAtTime(
      id,
      title,
      body,
      time,
      platformChannelSpecifics,
    );
  }

  void deleteNotificationPlan(int id) {
    _flutterLocalNotificationsPlugin.cancel(id);
  }

  void deleteAllNotificationPlan() {
    _flutterLocalNotificationsPlugin.cancelAll();
  }

  Future<List<PendingNotificationRequest>> showNotificationPlans() async {
    var pendingNotificationRequests =
        await _flutterLocalNotificationsPlugin.pendingNotificationRequests();
    return pendingNotificationRequests;
  }
}

import 'package:myf2app/core/localNotification/local_notification.dart';
import 'package:myf2app/models/medicine.dart';
import 'package:myf2app/models/patient.dart';

class NotificationHelper {
  int _id = 0;
  LocalNotification _localNotification = LocalNotification.getInstance();
  static final NotificationHelper _notificationHelper =
      NotificationHelper._internal();

  factory NotificationHelper() {
    return _notificationHelper;
  }
  NotificationHelper._internal();
  void createMedicineNotifications(Patient model) {
    _localNotification.deleteAllNotificationPlan();
    List<Medicine> medicines = model.medicines;
    Map<String, List<String>> medicineTimes = model.medicineTimes;
    Map<String, String> x = new Map<String, String>();
    // tüm ilaçları map'e atıyoruz. İlaç saatine göre sınıflandırıyoruz.
    for (Medicine m in medicines) {
      List<String> times = medicineTimes[m.name];
      for (String s in times) {
        x.update(
          s,
          (existingValue) => existingValue + "," + m.name,
          ifAbsent: () => m.name,
        );
      }
    }
    int hour;
    int min;

    x.forEach((time, name) {
      hour = int.parse(time.split(".")[0]) == 24
          ? 0
          : int.parse(time.split(".")[0]);
      min = int.parse(time.split(".")[1]);
      if (min < 5) {
        min += 55;
        if (hour == 0) {
          hour = 23;
        } else {
          hour -= 1;
        }
      } else {
        min -= 5;
      }

      _localNotification.setDailyNotification(
          hour, min, _id, "İlaç Saati", "$name kullanmayı unutmayın!");
      _id += 1;
    });
  }

  void createWaterNotifications() {
    for (int hour = 9; hour < 23; hour++) {
      _localNotification.setDailyNotification(
          hour,
          00,
          _id,
          "Su içmeyi unutma!",
          "Daha sağlıklı bir yaşam için 1 bardak suyu hayatından eksik etme.");
      _id += 1;
    }
  }
}

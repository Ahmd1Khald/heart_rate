import 'package:share/share.dart';

class AppFunctions {
  static void sendAlertMessage({
    required int ratio,
  }) {
    String state = "";
    if (ratio > 100 || ratio < 60) {
      state = "danger";
    } else {
      state = "stable";
    }
    Share.share(
      'Your state is $state and the heart rate is $ratio\n form AFH app',
      subject: '',
    );
  }
}

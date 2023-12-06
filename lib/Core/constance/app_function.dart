import 'package:flutter/material.dart';
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
      'Your state is $state and the heart rate is $ratio\n from AFH app',
      subject: '',
    );
  }

  static void pushTo({required context, required Widget screen}) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }
}

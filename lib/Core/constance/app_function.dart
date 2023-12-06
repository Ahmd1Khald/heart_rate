import 'package:flutter/material.dart';
import 'package:heart_rate/Core/helpers/cachehelper.dart';
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
      'Your state is $state and the heart rate is $ratio.\n\nSince when have you been diagnosed as AF patients? \n ->${CacheHelper.getDate(key: 'q1')}\n If you have a Previous diagnoses, including , heart conditions, surgeries, or other chronic illnesses,please Write them \n ->${CacheHelper.getDate(key: 'q2')}\n Have you experienced a heart attack before? \n ->${CacheHelper.getDate(key: 'q3')}\n Have you experienced a blood clot before? \n ->${CacheHelper.getDate(key: 'q4')}\n List of current medications, dosages, and frequency. \n ->${CacheHelper.getDate(key: 'q5')}\n Do you have Any known drug, food, or environmental allergies ?! Please Write them. \n ->${CacheHelper.getDate(key: 'q6')}\n\nfrom AFH app',
      subject: '',
    );
  }

  static void pushTo({required context, required Widget screen}) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }
}

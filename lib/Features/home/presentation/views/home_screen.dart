import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:heart_rate/Core/constance/app_function.dart';
import 'package:heart_rate/Features/home/presentation/views/widgets/heart_rate_widget.dart';
import 'package:heart_rate/Features/home/presentation/views/widgets/share_button.dart';
import 'package:heart_rate/Features/question/presentation/views/question_screen.dart';

import '../../../../Core/constance/all_colors.dart';
import '../../../../Core/constance/assets_manager.dart';
import '../../../../Core/servises/firebase_servise.dart';
import '../../../../Core/widgets/loading_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isPlayed = false;
  int heartRateNum = 0;

  Color heartRateColor = Colors.green;
  final assetsAudioPlayer = AssetsAudioPlayer();

  Future<void> playAlert() async {
    try {
      isPlayed = true;
      // Load the audio file from assets
      await assetsAudioPlayer
          .open(
            Audio("assets/sounds/alert.mp3"),
          )
          .then((value) {});
    } catch (e) {
      print('Error: $e');
    }
  }

  Future<void> pauseAlert() async {
    try {
      isPlayed = false;
      // Load the audio file from assets
      await assetsAudioPlayer.stop();
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  void dispose() {
    assetsAudioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DataSnapshot>(
      stream: FirebaseDataService().dataStream,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          DataSnapshot? data = snapshot.data;
          if (data!.value != null) {
            Object? hrValue =
                snapshot.data!.child('Now').child('Heart Rate is').value;
            print(hrValue);
            if ((hrValue is int && hrValue > 100) ||
                (hrValue is int && hrValue < 60)) {
              playAlert();
              AppFunctions.sendAlertMessage(
                ratio: hrValue,
              );
              heartRateColor = Colors.red;
            } else {
              heartRateColor = Colors.green;
            }
            return Scaffold(
              backgroundColor: AllColors.appBackGroundColor,
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      HeartRateWidget(
                        heartRateNum: snapshot.data!
                            .child('Now')
                            .child('Heart Rate is')
                            .value
                            .toString(),
                        heartRateColor: heartRateColor,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {
                              AppFunctions.pushTo(
                                  context: context,
                                  screen: const QuestionScreen());
                            },
                            icon: const Icon(
                              Icons.file_present_sharp,
                              size: 40,
                              color: AllColors.primaryColor,
                            ),
                          ),
                          const SizedBox(
                            width: 80,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Image.asset(
                        AssetsManager.heartRate,
                        width: double.infinity,
                        height: 160,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      ShareButton(
                        fnc: () {
                          AppFunctions.sendAlertMessage(
                            ratio: hrValue as int,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          } else {
            return const LoadingScreen();
          }
        } else {
          return const LoadingScreen();
        }
      },
    );
  }
}

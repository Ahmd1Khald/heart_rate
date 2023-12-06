import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../../../Core/constance/all_colors.dart';
import '../../../../../Core/constance/assets_manager.dart';

class HeartRateWidget extends StatelessWidget {
  const HeartRateWidget(
      {Key? key, required this.heartRateNum, required this.heartRateColor})
      : super(key: key);

  final String heartRateNum;
  final Color heartRateColor;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        const CircleAvatar(
          radius: 120,
          backgroundColor: AllColors.primaryColor,
        ),
        CircleAvatar(
          radius: 115,
          backgroundColor: AllColors.appBackGroundColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                heartRateNum,
                style: TextStyle(
                  color: heartRateColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 80,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              SpinKitPumpingHeart(
                itemBuilder: (BuildContext context, int index) {
                  return Image.asset(
                    AssetsManager.appImage,
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

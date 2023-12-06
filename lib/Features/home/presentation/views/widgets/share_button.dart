import 'package:flutter/material.dart';

import '../../../../../Core/constance/all_colors.dart';

class ShareButton extends StatelessWidget {
  const ShareButton({Key? key, required this.fnc}) : super(key: key);

  final VoidCallback fnc;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 2,
            color: AllColors.primaryColor,
          )),
      child: MaterialButton(
        height: 60,
        onPressed: fnc,
        child: const Text(
          'Share to my doctor',
          style: TextStyle(
            color: AllColors.primaryColor,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}

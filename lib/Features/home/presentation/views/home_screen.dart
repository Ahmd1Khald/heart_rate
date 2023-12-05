import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import '../../../../Core/constance/assets_manager.dart';
import '../../../../Core/constance/my_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool showCheckButton = true;
  final databaseReference =
      FirebaseDatabase.instance.ref('Embedded/Action needed/value');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.creamColor,
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "ICGM",
              style: TextStyle(
                color: MyColors.darkBrown,
                fontWeight: FontWeight.bold,
                fontSize: 34,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Image.asset(
              AssetsManager.appImage2,
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          ],
        ),
        backgroundColor: MyColors.appBackGroundColor,
        elevation: 0,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../../Core/constance/assets_manager.dart';
import '../../../../Core/constance/my_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool showCheckButton = true;
  // final databaseReference =
  //     FirebaseDatabase.instance.ref('Embedded/Action needed/value');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.appBackGroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  const CircleAvatar(
                    radius: 120,
                    backgroundColor: Colors.cyanAccent,
                  ),
                  CircleAvatar(
                    radius: 115,
                    backgroundColor: MyColors.appBackGroundColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "80",
                          style: TextStyle(
                            color: Colors.green,
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
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 2,
                      color: Colors.cyanAccent,
                    )),
                child: MaterialButton(
                  height: 60,
                  child: const Text(
                    'Share to my doctor',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontSize: 22,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

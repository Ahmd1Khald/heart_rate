import 'package:flutter/material.dart';
import 'package:heart_rate/Core/constance/all_colors.dart';
import 'package:heart_rate/Core/helpers/cachehelper.dart';
import 'package:heart_rate/Features/home/presentation/views/home_screen.dart';
import 'package:heart_rate/Features/question/presentation/views/widgets/reusable_text_form_field.dart';

import '../../../../Core/constance/app_function.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  late TextEditingController q1;
  late TextEditingController q2;
  late TextEditingController q3;
  late TextEditingController q4;
  late TextEditingController q5;
  late TextEditingController q6;
  late TextEditingController q7;
  late TextEditingController q8;
  late TextEditingController q9;
  late TextEditingController q10;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    q1 = TextEditingController(text: CacheHelper.getDate(key: "q1") ?? "");
    q2 = TextEditingController(text: CacheHelper.getDate(key: "q2") ?? "");
    q3 = TextEditingController(text: CacheHelper.getDate(key: "q3") ?? "");
    q4 = TextEditingController(text: CacheHelper.getDate(key: "q4") ?? "");
    q5 = TextEditingController(text: CacheHelper.getDate(key: "q5") ?? "");
    q6 = TextEditingController(text: CacheHelper.getDate(key: "q6") ?? "");
    q7 = TextEditingController(text: CacheHelper.getDate(key: "q7") ?? "");
    q8 = TextEditingController(text: CacheHelper.getDate(key: "q8") ?? "");
    q9 = TextEditingController(text: CacheHelper.getDate(key: "q9") ?? "");
    q10 = TextEditingController(text: CacheHelper.getDate(key: "q10") ?? "");
    super.initState();
  }

  @override
  void dispose() {
    q1.dispose();
    q2.dispose();
    q3.dispose();
    q4.dispose();
    q5.dispose();
    q6.dispose();
    q7.dispose();
    q8.dispose();
    q9.dispose();
    q10.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColors.appBackGroundColor,
      appBar: AppBar(
        backgroundColor: AllColors.appBackGroundColor,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // const SizedBox(
                  //   height: 25,
                  // ),
                  const Text(
                    'Answer this questions.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  //q1
                  const Text(
                    'Since when have you been diagnosed as AF patients?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ReusableTextFieldContainer(
                    inputType: TextInputType.multiline,
                    controller: q1,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'This question must be not empty';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      CacheHelper.saveData(key: 'q1', value: value);
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  //q2
                  const Text(
                    'If you have a Previous diagnoses, including , heart conditions, surgeries, or other chronic illnesses,please Write them',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ReusableTextFieldContainer(
                    inputType: TextInputType.multiline,
                    controller: q2,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'This question must be not empty';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      CacheHelper.saveData(key: 'q2', value: value);
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  //q3
                  const Text(
                    'Have you experienced a heart attack before?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ReusableTextFieldContainer(
                    inputType: TextInputType.multiline,
                    controller: q3,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'This question must be not empty';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      CacheHelper.saveData(key: 'q3', value: value);
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  //q4
                  const Text(
                    'Have you experienced a blood clot before?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ReusableTextFieldContainer(
                    inputType: TextInputType.multiline,
                    controller: q4,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'This question must be not empty';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      CacheHelper.saveData(key: 'q4', value: value);
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  //q5
                  const Text(
                    'List of current medications, dosages, and frequency.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ReusableTextFieldContainer(
                    inputType: TextInputType.multiline,
                    controller: q5,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'This question must be not empty';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      CacheHelper.saveData(key: 'q5', value: value);
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  //q6
                  const Text(
                    'Do you have Any known drug, food, or environmental allergies ?! Please Write them.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ReusableTextFieldContainer(
                    inputType: TextInputType.multiline,
                    controller: q6,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'This question must be not empty';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      CacheHelper.saveData(key: 'q6', value: value);
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  //q7
                  const Text(
                    'Is there a history of heart disease, atrial fibrillation, or other relevant conditions in family members?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ReusableTextFieldContainer(
                    inputType: TextInputType.multiline,
                    controller: q7,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'This question must be not empty';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      CacheHelper.saveData(key: 'q7', value: value);
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  //q8
                  const Text(
                    'Please choose the habits that fits to you from: smoking, alcohol or caffeine drinking?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ReusableTextFieldContainer(
                    inputType: TextInputType.multiline,
                    controller: q8,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'This question must be not empty';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      CacheHelper.saveData(key: 'q8', value: value);
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  //q9
                  const Text(
                    'Do you want to add  anything, feel free to respond?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ReusableTextFieldContainer(
                    inputType: TextInputType.multiline,
                    controller: q9,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'This question must be not empty';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      CacheHelper.saveData(key: 'q9', value: value);
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.width * 0.15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            width: 2,
                            color: Colors.white,
                          )),
                      child: MaterialButton(
                        height: MediaQuery.of(context).size.width * 0.15,
                        child: const Text(
                          'Continue',
                          style: TextStyle(
                            letterSpacing: 2,
                            decoration: TextDecoration.underline,
                            color: Colors.white, //AllColors.appBackGroundColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                          ),
                        ),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            AppFunctions.pushTo(
                                context: context, screen: const HomeScreen());
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Core/helpers/cachehelper.dart';
import 'Features/home/presentation/views/home_screen.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await CacheHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AFH',
      home: HomeScreen(),
    );
  }
}

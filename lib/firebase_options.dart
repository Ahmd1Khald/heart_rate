// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAxCUSggwkE61hz1DNDUuALAMis_3hdf0o',
    appId: '1:641771163288:web:2b130cd817dc5f2e2c4aed',
    messagingSenderId: '641771163288',
    projectId: 'heart-rate-93aee',
    authDomain: 'heart-rate-93aee.firebaseapp.com',
    databaseURL: 'https://heart-rate-93aee-default-rtdb.firebaseio.com',
    storageBucket: 'heart-rate-93aee.appspot.com',
    measurementId: 'G-3PEGKMYCQY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBpNCdbyo7Nyk8WLoJdVfuIh-CNdNTGpWw',
    appId: '1:641771163288:android:22b3580a484b0ce32c4aed',
    messagingSenderId: '641771163288',
    projectId: 'heart-rate-93aee',
    databaseURL: 'https://heart-rate-93aee-default-rtdb.firebaseio.com',
    storageBucket: 'heart-rate-93aee.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyArlDsXPprhXAqPnNYrR7ggPQNMVPCvaN4',
    appId: '1:641771163288:ios:9a166cd3b4c188702c4aed',
    messagingSenderId: '641771163288',
    projectId: 'heart-rate-93aee',
    databaseURL: 'https://heart-rate-93aee-default-rtdb.firebaseio.com',
    storageBucket: 'heart-rate-93aee.appspot.com',
    iosBundleId: 'com.example.heartRate',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyArlDsXPprhXAqPnNYrR7ggPQNMVPCvaN4',
    appId: '1:641771163288:ios:bd6a19601ebc795a2c4aed',
    messagingSenderId: '641771163288',
    projectId: 'heart-rate-93aee',
    databaseURL: 'https://heart-rate-93aee-default-rtdb.firebaseio.com',
    storageBucket: 'heart-rate-93aee.appspot.com',
    iosBundleId: 'com.example.heartRate.RunnerTests',
  );
}

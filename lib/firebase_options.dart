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
    apiKey: 'AIzaSyCN74uDw3sT5oMZb0zLl0GzaSNaPCSL0Mc',
    appId: '1:483021163108:web:0cb33ecd8c216f0995ad71',
    messagingSenderId: '483021163108',
    projectId: 'crud-flutter-7b171',
    authDomain: 'crud-flutter-7b171.firebaseapp.com',
    storageBucket: 'crud-flutter-7b171.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBOiHcTmPwAvoe6G2yFqThiw_UOqAKvwGM',
    appId: '1:483021163108:android:9e4dd5d3acefb86b95ad71',
    messagingSenderId: '483021163108',
    projectId: 'crud-flutter-7b171',
    storageBucket: 'crud-flutter-7b171.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBiRSSke97x-DUCOaoEZSHdX8-Hi5ohkzY',
    appId: '1:483021163108:ios:f94805d26736a59f95ad71',
    messagingSenderId: '483021163108',
    projectId: 'crud-flutter-7b171',
    storageBucket: 'crud-flutter-7b171.appspot.com',
    iosBundleId: 'com.example.flutterCrudFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBiRSSke97x-DUCOaoEZSHdX8-Hi5ohkzY',
    appId: '1:483021163108:ios:453e66f814ed97b295ad71',
    messagingSenderId: '483021163108',
    projectId: 'crud-flutter-7b171',
    storageBucket: 'crud-flutter-7b171.appspot.com',
    iosBundleId: 'com.example.flutterCrudFirebase.RunnerTests',
  );
}
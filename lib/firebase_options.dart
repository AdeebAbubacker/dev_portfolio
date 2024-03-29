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
    apiKey: 'AIzaSyDuwcYGUdozk43bVl08qZ22C1cxDHA3-lw',
    appId: '1:327093947444:web:8616bf72056716cd630e61',
    messagingSenderId: '327093947444',
    projectId: 'dev-portfolio-2dc36',
    authDomain: 'dev-portfolio-2dc36.firebaseapp.com',
    storageBucket: 'dev-portfolio-2dc36.appspot.com',
    measurementId: 'G-FMZ38WYTHR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCiF2P8PGUEUXFWsSGY6MwL8sJ7c788UiQ',
    appId: '1:327093947444:android:c24da3fa35c3556e630e61',
    messagingSenderId: '327093947444',
    projectId: 'dev-portfolio-2dc36',
    storageBucket: 'dev-portfolio-2dc36.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCRWLLSvAy_XAbnwjlzTtG5jonYufBDme8',
    appId: '1:327093947444:ios:c1d621a9415d8d60630e61',
    messagingSenderId: '327093947444',
    projectId: 'dev-portfolio-2dc36',
    storageBucket: 'dev-portfolio-2dc36.appspot.com',
    iosBundleId: 'com.example.devPortfolio',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCRWLLSvAy_XAbnwjlzTtG5jonYufBDme8',
    appId: '1:327093947444:ios:77ec62bd83cecfad630e61',
    messagingSenderId: '327093947444',
    projectId: 'dev-portfolio-2dc36',
    storageBucket: 'dev-portfolio-2dc36.appspot.com',
    iosBundleId: 'com.example.devPortfolio.RunnerTests',
  );
}

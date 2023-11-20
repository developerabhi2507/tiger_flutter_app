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
    apiKey: 'AIzaSyB2jeq6LMrUVs8WYcyjEjxsMf4Zcohrr5g',
    appId: '1:188799107355:web:9372a9f0dfdcdcd08353be',
    messagingSenderId: '188799107355',
    projectId: 'tiger-spin-wheel-game-app',
    authDomain: 'tiger-spin-wheel-game-app.firebaseapp.com',
    storageBucket: 'tiger-spin-wheel-game-app.appspot.com',
    measurementId: 'G-3WB812279P',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAyByNwVa1AnIgNyRcQTbhhqt6Q3_5a9y4',
    appId: '1:188799107355:android:5f774e46c033f96d8353be',
    messagingSenderId: '188799107355',
    projectId: 'tiger-spin-wheel-game-app',
    storageBucket: 'tiger-spin-wheel-game-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCRRI8HjC1PUA-X8MduJhp-P-dA9s-IeCU',
    appId: '1:188799107355:ios:4263d31c99efbe8d8353be',
    messagingSenderId: '188799107355',
    projectId: 'tiger-spin-wheel-game-app',
    storageBucket: 'tiger-spin-wheel-game-app.appspot.com',
    iosBundleId: 'com.developerabhi.tigerDemoApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCRRI8HjC1PUA-X8MduJhp-P-dA9s-IeCU',
    appId: '1:188799107355:ios:c72366e7245021a88353be',
    messagingSenderId: '188799107355',
    projectId: 'tiger-spin-wheel-game-app',
    storageBucket: 'tiger-spin-wheel-game-app.appspot.com',
    iosBundleId: 'com.developerabhi.tigerDemoApp.RunnerTests',
  );
}

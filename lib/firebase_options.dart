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
    apiKey: 'AIzaSyBGi9A-u8FIRboDIS7EYGFmSqGhFVRA108',
    appId: '1:674153080712:web:f6ab270c078793a8fbbc3d',
    messagingSenderId: '674153080712',
    projectId: 'flutter-firebase-2c11f',
    authDomain: 'flutter-firebase-2c11f.firebaseapp.com',
    databaseURL: 'https://flutter-firebase-2c11f-default-rtdb.firebaseio.com',
    storageBucket: 'flutter-firebase-2c11f.appspot.com',
    measurementId: 'G-WNVDLNSCTQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAmG7zlxtElDqkRS2L9Fi3elLKxZ4t4U2U',
    appId: '1:674153080712:android:a1b3000a8f26c4ccfbbc3d',
    messagingSenderId: '674153080712',
    projectId: 'flutter-firebase-2c11f',
    databaseURL: 'https://flutter-firebase-2c11f-default-rtdb.firebaseio.com',
    storageBucket: 'flutter-firebase-2c11f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBSZ24XCRa_ufnP6kh1LzSrTjQQmXg649U',
    appId: '1:674153080712:ios:99944539b2d51e7dfbbc3d',
    messagingSenderId: '674153080712',
    projectId: 'flutter-firebase-2c11f',
    databaseURL: 'https://flutter-firebase-2c11f-default-rtdb.firebaseio.com',
    storageBucket: 'flutter-firebase-2c11f.appspot.com',
    androidClientId: '674153080712-efkqa8iho2qmg4k9d6ararc3mklvrl7p.apps.googleusercontent.com',
    iosClientId: '674153080712-ld4k4v54vecf2ejpl9afdfe2vvos2eec.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBSZ24XCRa_ufnP6kh1LzSrTjQQmXg649U',
    appId: '1:674153080712:ios:ba6bed4d7a538b76fbbc3d',
    messagingSenderId: '674153080712',
    projectId: 'flutter-firebase-2c11f',
    databaseURL: 'https://flutter-firebase-2c11f-default-rtdb.firebaseio.com',
    storageBucket: 'flutter-firebase-2c11f.appspot.com',
    androidClientId: '674153080712-efkqa8iho2qmg4k9d6ararc3mklvrl7p.apps.googleusercontent.com',
    iosClientId: '674153080712-qigfbe44ftttfq60l0ba5ht6qes2f5d3.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterFirebase.RunnerTests',
  );
}

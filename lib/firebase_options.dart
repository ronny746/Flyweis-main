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
    apiKey: 'AIzaSyCJsRcOs4pFEMtv2c5NVKbqWF5MVKEFjMQ',
    appId: '1:593620206341:web:be1283d078debe087c6d6c',
    messagingSenderId: '593620206341',
    projectId: 'mybus-94ae7',
    authDomain: 'mybus-94ae7.firebaseapp.com',
    storageBucket: 'mybus-94ae7.appspot.com',
    measurementId: 'G-X54CPHSQ81',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCNHlTn8DmVODtoJGdRY0TXeJj_vzeb0ek',
    appId: '1:593620206341:android:d411c6ea33a432157c6d6c',
    messagingSenderId: '593620206341',
    projectId: 'mybus-94ae7',
    storageBucket: 'mybus-94ae7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyALU36qxrpUmIEXsIaEw6BdrmIH1glxRbw',
    appId: '1:593620206341:ios:444e718211419df27c6d6c',
    messagingSenderId: '593620206341',
    projectId: 'mybus-94ae7',
    storageBucket: 'mybus-94ae7.appspot.com',
    iosClientId: '593620206341-dikstvhl627kfh0kqk9hjqu0u978q87q.apps.googleusercontent.com',
    iosBundleId: 'com.example.myBusUserPanel',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyALU36qxrpUmIEXsIaEw6BdrmIH1glxRbw',
    appId: '1:593620206341:ios:444e718211419df27c6d6c',
    messagingSenderId: '593620206341',
    projectId: 'mybus-94ae7',
    storageBucket: 'mybus-94ae7.appspot.com',
    iosClientId: '593620206341-dikstvhl627kfh0kqk9hjqu0u978q87q.apps.googleusercontent.com',
    iosBundleId: 'com.example.myBusUserPanel',
  );
}
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
    apiKey: 'AIzaSyBqrUh-MzlQhnlkB7rTz8wOyBNhz2ysgbU',
    appId: '1:63176489651:web:2d2271c7acf37071c9cec6',
    messagingSenderId: '63176489651',
    projectId: 'brew-crew-ac572',
    authDomain: 'brew-crew-ac572.firebaseapp.com',
    storageBucket: 'brew-crew-ac572.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBbxr5kThZecmgsVIy4kcmec75BwKhxRxY',
    appId: '1:63176489651:android:2f9b724ecd57c0e2c9cec6',
    messagingSenderId: '63176489651',
    projectId: 'brew-crew-ac572',
    storageBucket: 'brew-crew-ac572.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDFKiYQxSbmod4xK5DcqjwxCNtBA7e6N6U',
    appId: '1:63176489651:ios:431ce36851c9ef95c9cec6',
    messagingSenderId: '63176489651',
    projectId: 'brew-crew-ac572',
    storageBucket: 'brew-crew-ac572.appspot.com',
    iosBundleId: 'come.brew.app',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDFKiYQxSbmod4xK5DcqjwxCNtBA7e6N6U',
    appId: '1:63176489651:ios:b70883170d90e093c9cec6',
    messagingSenderId: '63176489651',
    projectId: 'brew-crew-ac572',
    storageBucket: 'brew-crew-ac572.appspot.com',
    iosBundleId: 'com.example.myDataApp',
  );
}

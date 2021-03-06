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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDhVMTeYLDm9dWCn_JkkbQGtjhMEIRILYY',
    appId: '1:90241919207:android:f89c2e5d22cf0b18331a42',
    messagingSenderId: '90241919207',
    projectId: 'taskapp-flutter-1',
    storageBucket: 'taskapp-flutter-1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCT4tQiA7wz-74PFEv1Q7HAqqO7bsu8QWc',
    appId: '1:90241919207:ios:3686208ed4aa40da331a42',
    messagingSenderId: '90241919207',
    projectId: 'taskapp-flutter-1',
    storageBucket: 'taskapp-flutter-1.appspot.com',
    iosClientId: '90241919207-bl6ttbsttj1738tl4n6l8odpig0pt8mc.apps.googleusercontent.com',
    iosBundleId: 'com.example.stylish',
  );
}

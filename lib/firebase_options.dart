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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCs4JJYPextVhum2DRsad7my1FD8tjy3AU',
    appId: '1:798340756883:android:6d8aeda2caa74176fae466',
    messagingSenderId: '798340756883',
    projectId: 'da-vinci-1059f',
    storageBucket: 'da-vinci-1059f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDcYp6VCb0Jq_Y2nzMFNM2pxF0UTK8lsyc',
    appId: '1:798340756883:ios:36cbfc5ebba16edefae466',
    messagingSenderId: '798340756883',
    projectId: 'da-vinci-1059f',
    storageBucket: 'da-vinci-1059f.appspot.com',
    androidClientId: '798340756883-pkseji12k51vpsri9o3ltpd7ta5gfhp4.apps.googleusercontent.com',
    iosClientId: '798340756883-5i5t0lb5seesssu5gmsb14kuma9s3dcq.apps.googleusercontent.com',
    iosBundleId: 'com.example.flows',
  );
}

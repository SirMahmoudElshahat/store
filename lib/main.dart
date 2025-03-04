import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:udemy_store/core/app/env.variables.dart';
import 'package:udemy_store/store_main_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EnvVariable.instance.init(envType: EnvTypeEnum.dev);

  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
            apiKey: 'AIzaSyDQgcloJ0rNvuLIDAsxMsBwQWxAcT9UdDI',
            appId: '1:749455263338:android:27aee928934c189a906c13',
            messagingSenderId: '749455263338',
            projectId: 'store-95aae',
          ),
        )
      : await Firebase.initializeApp();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then((_) => runApp(const Store()));
}

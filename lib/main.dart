import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:udemy_store/store_main_widget.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid? await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: 'AIzaSyDQgcloJ0rNvuLIDAsxMsBwQWxAcT9UdDI',
        appId: '1:749455263338:android:27aee928934c189a906c13',
        messagingSenderId: '749455263338',
        projectId: 'store-95aae')
  ) : await Firebase.initializeApp() ;
  runApp(const Store());
}


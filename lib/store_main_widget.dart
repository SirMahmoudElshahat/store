import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:udemy_store/core/app/connectivity_controller.dart';
import 'package:udemy_store/core/app/env.variables.dart';
import 'package:udemy_store/core/common/screens/no_network_screen.dart';
import 'package:udemy_store/core/style/fonts/font_family_helper.dart';
import 'package:udemy_store/core/style/fonts/font_weight_helper.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            child: MaterialApp(
              title: 'Store',
              debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              builder: (context, widget) {
                return Scaffold(
                  body: Builder(
                    builder: (context) {
                      ConnectivityController.instance.init();
                      return widget!;
                    },
                  ),
                );
              },
              home: Scaffold(
                appBar: AppBar(
                  title: const Text('Store'),
                ),
                body: const Column(
                  children: [
                    // Old
                    Text(
                      'Old Font',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'وليد محمود',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    // New

                    Text(
                      'Old Font',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: FontFamilyHelper.poppinsEnglish,
                        fontWeight: FontWeightHelper.bold,
                      ),
                    ),

                    Text(
                      'وليد محمود',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: FontFamilyHelper.cairoArabic,
                        fontWeight: FontWeightHelper.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        } else {
          return MaterialApp(
            title: 'No NetWork ',
            debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
            home: const NoNetWorkScreen(),
          );
        }
      },
    );
  }
}

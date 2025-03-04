import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityController {
  ConnectivityController._();

  static final ConnectivityController instance = ConnectivityController._();

  ValueNotifier<bool> isConnected = ValueNotifier(true);

  Future<void> init() async {
    final result = await Connectivity().checkConnectivity();
    isInternetConnected(result);
    Connectivity().onConnectivityChanged.listen(isInternetConnected);
  }

  bool isInternetConnected(List<ConnectivityResult>? result) {
    if (result == null || result.isEmpty) {
      isConnected.value = false;
      return false;
    }

    if (result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi)) {
      isConnected.value = true;
      return true;
    }

    isConnected.value = false;
    return false;
  }
}

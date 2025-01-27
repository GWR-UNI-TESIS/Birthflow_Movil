import 'package:birthflow_movil/src/config/locator/locator.dart';
import 'package:flutter/material.dart';

mixin SnackbarMixin {
  void showSnackbar(String message,
      {Duration duration = const Duration(seconds: 3)}) {
    locator<GlobalKey<ScaffoldMessengerState>>().currentState?.showSnackBar(
          SnackBar(
            content: Text(message),
            duration: duration,
          ),
        );
  }

  void showErrorSnackbar(String message) {
    locator<GlobalKey<ScaffoldMessengerState>>().currentState?.showSnackBar(
          SnackBar(
            content: Text(message, style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 5),
          ),
        );
  }
}

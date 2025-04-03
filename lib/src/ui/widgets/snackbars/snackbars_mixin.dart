import 'package:birthflow_movil/src/config/locator/locator.dart';
import 'package:flutter/material.dart';

mixin SnackbarMixin {
  void showSnackbar(
    String message, {
    Duration duration = const Duration(seconds: 5),
  }) {
    locator<GlobalKey<ScaffoldMessengerState>>().currentState?.showSnackBar(
          SnackBar(
            content: Text(message),
            duration: duration,
            showCloseIcon: true,
          ),
        );
  }

  void showErrorSnackbar(String message) {
    locator<GlobalKey<ScaffoldMessengerState>>().currentState?.showSnackBar(
          SnackBar(
            content: Text(message),
            duration: const Duration(seconds: 5),
            showCloseIcon: true,
          ),
        );
  }
}

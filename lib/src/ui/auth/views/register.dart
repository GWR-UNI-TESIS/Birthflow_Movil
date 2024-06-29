import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen();

  @override
  Widget build(BuildContext context) {
    return _RegisterView();
  }
}

class _RegisterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
    );
  }
}

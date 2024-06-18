import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _RegisterView();
  }
}

class _RegisterView extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register'),),
    );
  }
}

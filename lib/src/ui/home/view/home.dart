
import 'package:flutter/material.dart';
import 'package:auto_route/annotations.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _HomeView();
  }
}

class _HomeView extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home'),),
    );
  }
}

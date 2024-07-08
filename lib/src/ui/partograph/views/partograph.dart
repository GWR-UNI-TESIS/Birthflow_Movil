import 'package:flutter/material.dart';

class PartographScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _PartographView();
  }
}

class _PartographView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Partograph'),
      ),
      body: const Center(
        child: Text('Partograph'),
      ),
    );
  }
}

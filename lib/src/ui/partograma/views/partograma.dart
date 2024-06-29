import 'package:flutter/material.dart';

class PartogramaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _PartogramaView();
  }
}

class _PartogramaView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Partograma'),
      ),
      body: const Center(
        child: Text('Partograma'),
      ),
    );
  }
}

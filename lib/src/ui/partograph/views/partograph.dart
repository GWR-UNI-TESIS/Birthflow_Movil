import 'package:flutter/material.dart';

class PartographScreen extends StatelessWidget {
  final String partographId;

  const PartographScreen({super.key, required this.partographId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(partographId),
      ),
      body: const Center(
        child: Text('Partograph'),
      ),
    );
  }
}

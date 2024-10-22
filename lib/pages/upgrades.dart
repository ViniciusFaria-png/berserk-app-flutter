import 'package:flutter/material.dart';

class Upgrades extends StatelessWidget {
  final String text;
  const Upgrades({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(text),),
      body: const Center(
        child: Text("Melhorias"),
        ),
    );
  }
}
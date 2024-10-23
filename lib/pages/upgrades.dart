import 'package:flutter/material.dart';

class Upgrades extends StatelessWidget {
  final String text;
  const Upgrades({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(text),),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/images/bg2.png'), // Caminho da sua imagem de fundo
            fit: BoxFit.cover, // Ajusta a imagem para cobrir todo o fundo
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "DragonSlayer",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              Image.asset(
                  'lib/assets/images/Sword.png',
                  width: 200,
                  height: 200,
          ),
            ],
          )
      ),
    )
    );
  }
}
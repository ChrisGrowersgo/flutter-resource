import 'package:flutter/material.dart';

class Myhome extends StatelessWidget {
  const Myhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página en blanco'),
      ),
      body: const Center(
        child: Text(
          'Bienvenido a la página en blanco',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
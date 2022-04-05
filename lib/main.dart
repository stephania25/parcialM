import 'package:flutter/material.dart';
import 'package:parcial1/estructura.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Cuadrado Magico 3x3',
        ),
        backgroundColor: Colors.purple,
      ),
      body: const Estructura(),
    ),
  ));
}

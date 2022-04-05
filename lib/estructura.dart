import 'package:flutter/material.dart';
import 'package:parcial1/datos/varCuadradoMagic.dart';

class Estructura extends StatefulWidget {
  const Estructura({Key? key}) : super(key: key);

  @override
  State<Estructura> createState() => _EstructuraState();
}

class _EstructuraState extends State<Estructura> {
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Magic()],
      
    );
  }
}


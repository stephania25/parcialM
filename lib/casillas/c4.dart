// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:parcial1/datos/datosCasillas.dart';

class C4 extends StatefulWidget {
  final Dato valorCasilla;
  
  C4({required this.valorCasilla});
  @override
  State<C4> createState() => _C4State();
}

class _C4State extends State<C4> {
  cambioNumero (){
    setState((){
      if (widget.valorCasilla.c4 ==9){
        widget.valorCasilla.c4 = 0;
      }
      else{
        widget.valorCasilla.c4 ++;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    var c4=Column(
      children: [
        Text(widget.valorCasilla.c4.toString()),
        ElevatedButton(
          onPressed: (() => cambioNumero()), 
          child: const Text('c4')
        )
      ],
    );
    return c4;
  }
}
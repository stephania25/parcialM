// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../datos/datosCasillas.dart';

class C3 extends StatefulWidget {
  final Dato valorCasilla;
  
  C3 ({required this.valorCasilla });
  @override
  State<C3> createState() => _C3State();
}

class _C3State extends State<C3> {

  cambioNumero(){
    setState(() {
      if (widget.valorCasilla.c3 ==9){
        widget.valorCasilla.c3 = 0;

      }
      else {
        widget.valorCasilla.c3 ++;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    var c3=Column(
      children: [
        Text(widget.valorCasilla.c3.toString()),
        ElevatedButton(
          onPressed:(() => cambioNumero() ) ,
           child: const Text ('c3'),  
        )
      ],
    );
  return c3;
  }
  
}
// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../datos/datosCasillas.dart';

class C2 extends StatefulWidget {
  final Dato valorCasilla;
  
  C2 ({required this.valorCasilla});
  @override
  State<C2> createState() => _C2State();
}

class _C2State extends State<C2> {

  cambioNumero(){
    setState(() {
      if (widget.valorCasilla.c2 ==9){
        widget.valorCasilla.c2 = 0;

      }
      else {
        widget.valorCasilla.c2 ++;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    var c2= Column(
      children: [
        Text(widget.valorCasilla.c2.toString()),
        ElevatedButton(
          onPressed:(() => cambioNumero() ) ,
           child: const Text ('c2'),
           
        )

      ],
    );
  return c2;
  }
  
}
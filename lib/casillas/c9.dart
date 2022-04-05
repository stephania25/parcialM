// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:parcial1/datos/datosCasillas.dart';

class C9 extends StatefulWidget {
  final Dato valorCasilla;

  C9({required this.valorCasilla});
  @override
  State<C9> createState() => _C9State();
}

class _C9State extends State<C9> {
  cambioNumero(){
    setState(() {
      if (widget.valorCasilla.c9 ==9){
        widget.valorCasilla.c9 =0;
      }
      else
      widget.valorCasilla.c9 ++;
    });
  }
  @override
  Widget build(BuildContext context) {
    var c9=Column(
      children: [
        Text(widget.valorCasilla.c9.toString()),
        ElevatedButton(
          onPressed: (() => cambioNumero() ),
           child:const Text('c9')
           )
      ],
    );
    return c9;
  }
}
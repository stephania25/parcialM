// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:parcial1/datos/datosCasillas.dart';

class C7 extends StatefulWidget {
  final Dato valorCasilla;

  C7({required this.valorCasilla});
  @override
  State<C7> createState() => _C7State();
}

class _C7State extends State<C7> {
  cambioNumero(){
    setState(() {
      if (widget.valorCasilla.c7 ==9){
        widget.valorCasilla.c7 =0;
      }
      else
      widget.valorCasilla.c7 ++;
      
    });
  }
  @override
  Widget build(BuildContext context) {
    var c7= Column(
      children: [
        Text(widget.valorCasilla.c7.toString() ),
        ElevatedButton(
          onPressed: (() => cambioNumero()),
           child:const Text('c7')
           )
      ],
    );
    return c7;
  }
}
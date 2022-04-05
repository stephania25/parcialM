// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:parcial1/datos/datosCasillas.dart';


class C1 extends StatefulWidget {
  final Dato valorCasilla;
  
  C1 ({required this.valorCasilla});
  @override
  State<C1> createState() => _C1State();
}

class _C1State extends State<C1> {

  cambioNumero(){
    setState(() {
      if (widget.valorCasilla.c1 ==9){
        widget.valorCasilla.c1 = 0;

      }
      else {
        widget.valorCasilla.c1 ++;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    var c1 = Column(
      children: [
        Text(widget.valorCasilla.c1.toString()),
        ElevatedButton(
          onPressed:(() => cambioNumero() ) ,
           child:const Text ('c1'),
        )
      
      ],
    );
  return c1;
  }
 
}
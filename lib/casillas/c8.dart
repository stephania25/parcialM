import 'package:flutter/material.dart';
import 'package:parcial1/datos/datosCasillas.dart';

class C8 extends StatefulWidget {
  final Dato valorCasilla;

  C8({required this.valorCasilla});
  @override
  State<C8> createState() => _C8State();
}

class _C8State extends State<C8> {
  cambioNumero(){
    setState(() {
      if (widget.valorCasilla.c8 ==9){
        widget.valorCasilla.c8 =0;
      }
      else
      widget.valorCasilla.c8 ++;
    });
  }
  @override
  Widget build(BuildContext context) {
    var c8=Column(
      children: [
        Text(widget.valorCasilla.c8.toString()),
        ElevatedButton(
          onPressed: (() => cambioNumero() ),
           child:const  Text('c8')
           )
      ],
    );
    return c8;
  }
}
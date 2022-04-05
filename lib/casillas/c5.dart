import 'package:flutter/material.dart';
import 'package:parcial1/datos/datosCasillas.dart';

class C5 extends StatefulWidget {
  final Dato valorCasilla;

  C5({required this.valorCasilla});
  @override
  State<C5> createState() => _C5State();
}

class _C5State extends State<C5> {
  cambioNumero(){
    setState((){
      if (widget.valorCasilla.c5==9) {
        widget.valorCasilla.c5 = 0 ; 
      }
      else 
      widget.valorCasilla.c5 ++;
    });
  }
  @override
  Widget build(BuildContext context) {
    var c5= Column(
      children: [
        Text(widget.valorCasilla.c5.toString()),
        ElevatedButton(
          onPressed:(() => cambioNumero()), 
          child: const Text('c5'),
        )
      ],
    );
    return c5;
  }     
}
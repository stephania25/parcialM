
import 'package:flutter/material.dart';
import 'package:parcial1/datos/datosCasillas.dart';

class C6 extends StatefulWidget {
  final Dato valorCasilla;

  C6({required this.valorCasilla});
  @override
  State<C6> createState() => _C6State();
}

class _C6State extends State<C6> {
  cambioNumero(){
    setState(() {
      if (widget.valorCasilla.c6 ==9){
        widget.valorCasilla.c6 =0;
      }
      else
      widget.valorCasilla.c6 ++;
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    var c6= Column(
      children: [
        Text(widget.valorCasilla.c6.toString()),
        ElevatedButton(
          onPressed: (()=> cambioNumero()),
          child: const Text('c6'),
        )
      ],
    );
    return c6;
  }
}
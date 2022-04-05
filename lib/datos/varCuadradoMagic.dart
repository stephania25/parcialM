
import 'package:parcial1/casillas/c1.dart';
import 'package:parcial1/casillas/c2.dart';
import 'package:parcial1/casillas/c3.dart';
import 'package:parcial1/casillas/c4.dart';
import 'package:parcial1/casillas/c5.dart';
import 'package:parcial1/casillas/c6.dart';
import 'package:parcial1/casillas/c7.dart';
import 'package:parcial1/casillas/c8.dart';
import 'package:parcial1/casillas/c9.dart';
import 'package:parcial1/datos/datosCasillas.dart';

import 'package:flutter/material.dart';

class Magic extends StatefulWidget {
  const Magic({Key? key}) : super(key: key);

  @override
  State<Magic> createState() => _MagicState();
}

class _MagicState extends State<Magic> {
  final valorCasilla = Dato(
    c1:1, c2:2, c3:3, c4:4,c5:5,c6:6,c7:7,c8:8, c9:9,);

     String result = '';
     int comparar = 15;
    
    sumasvhd(){
      setState(() {
      int v1 = valorCasilla.c1+valorCasilla.c4+valorCasilla.c7;
      int v2 = valorCasilla.c2+valorCasilla.c5+valorCasilla.c8;
      int v3 = valorCasilla.c3+valorCasilla.c6+valorCasilla.c9;

      int h1 = valorCasilla.c1+valorCasilla.c2+valorCasilla.c3;
      int h2 = valorCasilla.c4+valorCasilla.c5+valorCasilla.c6;
      int h3 = valorCasilla.c7+valorCasilla.c8+valorCasilla.c9;

      int d1 = valorCasilla.c1+valorCasilla.c5+valorCasilla.c9;
      int d2 = valorCasilla.c3+valorCasilla.c5+valorCasilla.c7;

      if(
        (v1==comparar)&&
        (v2==comparar)&&
        (v3==comparar)&&
        (h1==comparar)&&
        (h2==comparar)&&
        (h3==comparar)&&
        (d1==comparar)&&
        (d2==comparar)&&

        (valorCasilla.c1 != valorCasilla.c5)&&
        (valorCasilla.c1 != valorCasilla.c6)&&
        (valorCasilla.c1 != valorCasilla.c7)&&

        (valorCasilla.c1 != valorCasilla.c2)&&
        (valorCasilla.c1 != valorCasilla.c3)&&
        (valorCasilla.c1 != valorCasilla.c4)&&

        (valorCasilla.c1 != valorCasilla.c8)&&
        (valorCasilla.c1 != valorCasilla.c9)){

        result = 'Es MAGICO';
     } else {
        result = 'No es MAGICO';
      }
  });
}
  @override
  Widget build(BuildContext context) {
    var diagrama = Center(
        child: Column(
        children:[
        const Align(
          child: Padding(
            padding: EdgeInsets.all(20) ),
        ),
        Row(
         mainAxisAlignment: MainAxisAlignment.center, 
         children: [
           Card(
             child: Column(
               children: [C1(valorCasilla:valorCasilla),
                ],
            ) ),
            Card(
              child: Column(
                children: [C2(valorCasilla:valorCasilla),
                ]
            ) ),
            Card(
              child: Column(
                children: [C3(valorCasilla:valorCasilla)]
            ) )
         ],
        ),
        const Align(
          child: Padding(
            padding: EdgeInsets.all(10) ),
        ),
        Row(
         mainAxisAlignment: MainAxisAlignment.center, 
         children: [
           Card(
             child: Column(
               children: [C4(valorCasilla: valorCasilla),
                ],
            ) ),
            Card(
              child: Column(
                children: [C5(valorCasilla:valorCasilla),
                ]
            ) ),
            Card(
              child: Column(
                children: [C6(valorCasilla:valorCasilla)]
            ) )
         ],
        ),
         const Align(
          child: Padding(
            padding: EdgeInsets.all(10) ),
        ),
        Row(
         mainAxisAlignment: MainAxisAlignment.center, 
         children: [
           Card(
             
             child: Column(
               children: [C7(valorCasilla: valorCasilla),
                ],
            ) ),
            Card(
              child: Column(
                children: [C8(valorCasilla:valorCasilla),
                ]
            ) ),
            Card(
              child: Column(
                children: [C9(valorCasilla:valorCasilla)]
                
            ) )
         ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const Align(
                  child: Padding(padding: EdgeInsets.all(20.5)),
                ),
                ElevatedButton(
                  onPressed: (){
                    sumasvhd();
                  
                  }, 
                  child: const Text('validar cuadrado magico')),
                const Align(
                  child: Padding(padding: EdgeInsets.all(2)),
                  
                ),
                Text(
                  result.toString(),
                  style: const TextStyle(fontSize: 10) ,
                )
              ],
            )
          ],
        )
      ]));
    return diagrama;
  }
}

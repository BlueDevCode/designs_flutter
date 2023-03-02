
import 'dart:math';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final boxDecoration = const BoxDecoration(
        gradient: LinearGradient(
          colors:[
            Color.fromARGB(255, 17, 2, 116),
            Color.fromARGB(255, 24, 3, 78)
          ]
           )
        );
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Stack(
      children: [
        Container(
          decoration: boxDecoration),
          const Positioned(
            top: -100,
            left: -30,
            child: _Bluebox())
      ],
    );
  }
}

class _Bluebox extends StatelessWidget {
  const _Bluebox({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi/ 5 ,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
           color: Colors.indigo.shade900,
          borderRadius: BorderRadius.circular(80),
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(235, 157, 5, 157),
              Color.fromARGB(235, 141, 3, 159),
            ]
          )
        ),
      ),
    );
  }
}

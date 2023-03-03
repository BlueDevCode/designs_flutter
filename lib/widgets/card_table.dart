// ignore_for_file: unnecessary_this

import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable ({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(color: Colors.blue, icon: Icons.border_all,text: "General"),
            _SingleCard(color: Colors.pinkAccent, icon: Icons.car_rental, text: "Transport")
          ]
        ),
        TableRow(
          children: [
            _SingleCard(color: Colors.purpleAccent, icon: Icons.shop,text: "Shop"),
            _SingleCard(color: Colors.blueGrey, icon: Icons.cloud, text: "Bill")
          ]
        ),
        TableRow(
          children: [
            _SingleCard(color: Color.fromARGB(255, 137, 86, 226), icon: Icons.movie,text: "Entertainment"),
            _SingleCard(color: Color.fromARGB(255, 188, 12, 188), icon: Icons.food_bank_outlined, text: "Grocery")
          ]
        ),
         TableRow(
          children: [
            _SingleCard(color: Color.fromARGB(255, 97, 140, 215), icon: Icons.sports_gymnastics_rounded,text: "Gym"),
            _SingleCard(color: Color.fromARGB(255, 243, 103, 60), icon: Icons.healing, text: "Health")
          ]
        ),



     
      ],
    );
  }
}
class _SingleCard extends StatelessWidget {

   final IconData icon;
   final Color color;
   final String text;

  const _SingleCard({required this.icon, 
  required this.color, 
  required this.text, 
  });

  @override
  Widget build(BuildContext context) {
    var column = Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                CircleAvatar(
                  backgroundColor: color,
                  radius: 30,
                  child: Icon(icon, size:35, color: Colors.white,),
                ),
                const SizedBox(height: 10,),
                Text(text, style:TextStyle(color:color, fontSize: 18))
        
              ],
            );
    return  _CardBackground(child: column);
  }
}
class _CardBackground extends StatelessWidget {
  final Widget child;
  const _CardBackground
  ({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
     
       margin:  const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
           
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20)
            ),
            child: child,
          ),
        ),
      ),
    );


      
    
  }
}
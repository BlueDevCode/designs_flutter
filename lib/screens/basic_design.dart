

import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
   
  const BasicDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body:Column(
        children:  [
           const Image(image: AssetImage("assets/landscape.jpg")),
           const Title(),
           const ButtonSection(),
           Container(
             margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
             child: const Text(
          'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
          'Alps. Situated 1,578 meters above sea level, it is one of the '
          'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
          'half-hour walk through pastures and pine forest, leads you to the '
          'lake, which warms to 20 degrees Celsius in the summer. Activities '
          'enjoyed here include rowing, and riding the summer toboggan run.',
          
             ),
           ),

        ],
      )
    );
  }
}


class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Row(
       
       children:  [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
             Text("Oeschine lake campground", style: TextStyle(fontWeight: FontWeight.bold),),
             SizedBox(height: 10,),
             Text ("Kandersteg, Switzerland",style: TextStyle(color:Colors.black54),)
          ],
        ),
        Expanded(child: Container()),
         const Icon(Icons.star,color: Color.fromARGB(255, 4, 54, 5)),
         const Text("41")
       ],
      ),
    );
  }
}


class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
       children: const [
            CustomButton(icon: Icons.call, text: "CALL"),
            CustomButton(icon: Icons.near_me, text: "ROUTE"),
            CustomButton(icon: Icons.share, text: "SHARE"),
          ],
        ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  
  const CustomButton({
    Key? key,
     required this.icon,
     required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        Icon(icon, 
        color: const Color.fromARGB(255, 4, 54, 5), size:30),
        const SizedBox(height: 10,),
         Text(text,
         style: const TextStyle(
         color: Color.fromARGB(255, 4, 54, 5),
        fontWeight: FontWeight.bold
          )),
          
      ],
    );
  }
}

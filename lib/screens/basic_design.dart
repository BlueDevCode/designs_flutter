

import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
   
  const BasicDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body:Column(
        children: const [
           Image(image: AssetImage("assets/landscape.jpg")),
           Title()
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
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
       
       children:  [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
             Text("Oeschine lake campground", style: TextStyle(fontWeight: FontWeight.bold),),
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
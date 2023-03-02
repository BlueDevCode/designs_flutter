
import 'package:flutter/material.dart';

class CustomBottomNavigation
 extends StatelessWidget {
  const CustomBottomNavigation
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.white,
      backgroundColor: const Color.fromARGB(235, 157, 5, 157),
      unselectedItemColor: Colors.white,
      items: const [
        BottomNavigationBarItem(
          icon: Icon (Icons.calendar_today_outlined, color: Colors.white, size: 35,),
          label: "Calendar"

          ),

          BottomNavigationBarItem(
          icon: Icon (Icons.pie_chart_outline_outlined, color: Colors.white, size: 35),
          label: "Grafica", 

          ),

          BottomNavigationBarItem(
          icon: Icon (Icons.supervised_user_circle_outlined, color: Colors.white, size: 35),
          label: "usuarios")

      ]
      
    );
    
  }
}
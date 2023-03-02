import 'package:designs_flutter/screens/basic_design.dart';
import 'package:designs_flutter/screens/home_screen.dart';
import 'package:designs_flutter/screens/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return  MaterialApp( 
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const Text("Material app"),
      initialRoute:   "home_screen",
      routes: {
        "basic_design": (_) => const BasicDesignScreen(),
        "scroll_screens": (_) => ScrollScreen(),
        "home_screen": (_) => const HomeScreen()
      },
    
    );
  }
}
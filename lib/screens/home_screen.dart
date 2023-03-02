
import 'package:designs_flutter/widgets/page_title.dart';
import 'package:flutter/material.dart';
import '../widgets/background.dart';
import '../widgets/custom_buttom_navigation.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:  const [
       Background (),
       _Homebody()

        ],

      ),
      bottomNavigationBar:const CustomBottomNavigation()
    );
  }
}

class _Homebody extends StatelessWidget {
  const _Homebody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child: Column(
        children: const [
          PageTitle(),

        ]),
    );
  }
}
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children:[ Image.asset('assets/images/logo.png',
    ),
    ElevatedButton(onPressed: (){}, child: Text('Login'), style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).colorScheme.primary, foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3),), minimumSize: Size(double.infinity, 50)
    ),
    
    ),
   
      ]),
    );
  }
}
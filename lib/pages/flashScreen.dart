import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FlashScreen extends StatefulWidget {
  const FlashScreen({super.key});

  @override
  State<FlashScreen> createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),()=>Navigator.pushReplacementNamed(context, '/login'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: SafeArea(
        child: Center(
          child: Text("WELCOME APPLICATION",style: TextStyle(color: Colors.white,letterSpacing: 3.0),),
        ),
      ),

    );
  }
}

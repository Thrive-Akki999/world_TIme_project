import 'package:flutter/material.dart';

class SignIN extends StatefulWidget {
   SignIN({super.key});

  @override
  State<SignIN> createState() => _SignINState();
}

class _SignINState extends State<SignIN> {
  @override

  Widget build(BuildContext context) {

    Map data = ModalRoute.of(context)?.settings.arguments as Map ;
    return SafeArea(child: Center(

      child: Container(
        child: Column(
          children: [
            Text("User : ${data['user']}"),
            Text("Password : ${data['pass']}"),
          ],
        ),
      ),
    ));
  }
}

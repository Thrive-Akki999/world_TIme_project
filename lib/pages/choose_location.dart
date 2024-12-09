import 'package:flutter/material.dart';


class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  Map data = {};

  @override
  void
  initState() {
    // TODO: implement initState
    super.initState();
}
  


  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context)!.settings.arguments as Map;
    print(data);
    return Scaffold(

        appBar:AppBar(
        backgroundColor: Colors.grey,
        title:Text("Location Selecter",style: TextStyle(color: Colors.white,letterSpacing: 4.0),),
    centerTitle: true,
        ),

      body: Column(
        children: [
          Padding(padding:EdgeInsets.all(10.0),
          child:Column(
crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text("Location : ${data['location']}"),
              Text("Time : ${data['time']}"),
              Text("Date : ${data['date']}"),
            ],
          ),),
          TextButton(onPressed:(){
            Navigator.pushNamed(context, '/home');
          }, child:Text("Next")),
      ]
    ),
    );
  }

}


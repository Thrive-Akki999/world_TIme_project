import 'dart:async';

import 'package:flutter/material.dart';
import 'package:world_map_project/service/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = "loading....";
  String date = "Wait.........";
  String place = "Place..";

  void fetchWorldTime() async{

    WordTime dateTime = WordTime(continent:"Asia",location:"kolkata");
    await dateTime.getTime();
    setState(() {
      time = dateTime.time ?? "could not fetch the data";
      date = dateTime.date ?? "could not fetch the data";
      place = dateTime.location ?? "place not found";
    });
    
    print(time);
    print(date);

    await Timer(Duration(seconds:10),()=> Navigator.pushReplacementNamed(context,'/ChooseLo',arguments: {
      'location':dateTime.location,
      'time':dateTime.time,
      'date':dateTime.date,
    }));
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body:SafeArea(
          child:Center(
        child: Center(
          child:SpinKitSpinningLines(
              color: Colors.black87,
              size: 50.0,
          ),
        ),
      ))

    );
  }
}

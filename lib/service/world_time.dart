
import 'dart:convert';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WordTime {

  String? time;
  String? location;
  String? continent;
  String? date;

  WordTime({this.location,this.continent});

  Future<void> getTime() async {

    try{
      Response response = await get(Uri.parse("https://timeapi.io/api/time/current/zone?timeZone=${continent}%2F${location}"));
      if(response.statusCode == 200){
        print("Api Hit Successfully : Status ${response.statusCode}");
        try{
          Map data = jsonDecode(response.body);

          // fetch data

          String datatime = data['dateTime'];
          date = data['date'].toString();

          // Convert String datetime to Datetime Object
          DateTime timeData = DateTime.parse(datatime);

          // time = ("${timeData.hour}:${timeData.minute}:${timeData.second}")
          time = DateFormat.jm().format(timeData);
        }catch(e){
          print("Error : $e");
        }
      }else{
        print("Failed to load the data : Satatus of response ${response.statusCode}");
      }
    }catch(e){
      print("Error occurred during API call: $e");
    }


 

  }


}
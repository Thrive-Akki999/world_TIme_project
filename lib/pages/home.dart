import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;
  String? Name ;
  String? Message;
  String NameL = " ";
  String MessageL = " ";

  void welcomeMessage() async {

      Name = await Future.delayed(const Duration(seconds: 4) ,(){
       return "Akshay Kumar";
    });

     print(Name);

      Message = await Future.delayed(Duration(seconds: 6),(){
       return "Welcome TO Norton, We Are Here To Keep You Cyber Safe";
     });


      setState(() {

      });

      print("updates value ::$Name");
      print("updates value ::$Message");

  }



  // @override
  // void initState() {
  //   super.initState();
  //   print('init function is invoked');
  // }

  // @override
  // void didChangeDependencies() {
  //   // TODO: implement didChangeDependencies
  //   super.didChangeDependencies();
  //   print('Change is invoked');
  // }


  // @override
  // void didUpdateWidget(covariant Home oldWidget) {
  //   // TODO: implement didUpdateWidget
  //   super.didUpdateWidget(oldWidget);
  //   print('Update is invoked');
  // }

  @override
  Widget build(BuildContext context) {
    print("updates value qq ::$Name");
    print("updates value qq NameL ::$NameL");

    print('Build is invoked');
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.grey,
        title:Text("Application",style: TextStyle(color: Colors.white,letterSpacing: 4.0),),
        centerTitle: true,
      ),
      body:Center(
        child: Column(
          children: [
            Text("HomePage"),
            IconButton(onPressed:(){
              Navigator.pushNamed(context, '/ChooseLo');
            }, icon: Icon(Icons.edit_location),),

            Card(
              color: Colors.yellow,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text("Count is $counter"),
                    FilledButton.icon(onPressed:(){
                      setState(() {
                        counter += 1;
                      });
                    }, label: Text("ADD"),icon: Icon(Icons.add),),
                    SizedBox(height: 3.0,),
                    FilledButton.icon(onPressed:(){
                      setState(() {
                        counter -= 1;
                      });
                    }, label: Text("Delete"),icon: Icon(Icons.account_circle),),
                    SizedBox(height: 3.0,),
                    FilledButton.icon(onPressed:(){
                      setState(() {
                        counter += 10;
                      });
                    }, label: Text("Jump 10"),),

                    FilledButton.icon(onPressed:welcomeMessage, label: Text("Print Name and Message"),),


                    Card(
                        color: Colors.red,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text("${Name}"),
                              Text("${Message}"),
                            ],
                          ),
                        ),
                      ),
                ],
                    ),

                ),
              ),
           ],
        )

        ),
    );
  }
}

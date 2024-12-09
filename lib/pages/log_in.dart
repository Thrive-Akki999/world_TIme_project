import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController userController = TextEditingController();
  TextEditingController password = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin:Alignment.centerLeft,
          end:Alignment.bottomRight,
          colors: [
            Colors.red,
            Colors.blue,
          ],
        )
      ),
      child:Scaffold(
        backgroundColor: Colors.transparent,
        body:_page(context,userController,password ),
      ),
    );
  }
}

// this Widget is used for the Make Login Page of the Application

Widget _page(BuildContext context, TextEditingController userController ,TextEditingController password){
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _logo(),
        const SizedBox(height: 10.0),
        _TextFiled("UserName",userController),
        const SizedBox(height: 10.0,),
        _TextFiled("Password", password),
        const SizedBox(height: 10.0,),
        _button(context,userController,password),
      ],
    ),
  );
}

Widget _logo() {
  return Container(
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(color: Colors.white,width: 10.0,),
    ),
    child: Icon(Icons.person, color: Colors.white,size: 90.0,),
  );
}

Widget _TextFiled(String Fieldname,TextEditingController contoller) {

  var border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(20.0),
    borderSide: BorderSide(color: Colors.white,),
  );

  return Padding(
    padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
    child: TextField(
      style:TextStyle(color: Colors.white),
      controller: contoller,
      decoration: InputDecoration(
        hintText: Fieldname,
        hintStyle: TextStyle(color: Colors.white),
        enabledBorder: border,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
          borderRadius: BorderRadius.circular(22.0),
        )
      ),

    ),
  );
}


Widget _button (BuildContext context,TextEditingController userController ,TextEditingController password) {
  return ElevatedButton.icon(onPressed: () {
    print(userController.text);
    print(password.text);
    Navigator.pushReplacementNamed(context, '/sign-in',arguments: {
      'user':userController.text,
      'pass':password.text,
    },);

  }, label:Text( "Sign-in" ,style: TextStyle(color: Colors.black87,letterSpacing: 3.0 ),), icon:Icon(Icons.add_box_outlined), style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.blue),padding: WidgetStatePropertyAll(EdgeInsets.fromLTRB(100, 20, 100, 20)),
  iconColor: WidgetStatePropertyAll(Colors.black87)),);
}


// child: ElevatedButton.icon(onPressed: (){
//   Navigator.pushReplacementNamed(context, '/loading');
// }, label:Text("Login"), icon: Icon(Icons.account_circle_outlined),)
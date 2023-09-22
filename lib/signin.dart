import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class firstclass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
      child:myapp(),
    ));
  }

}
class myapp extends StatefulWidget {


  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {


  @override
  Widget build(BuildContext context) {
    return Form(
        child:Column(
          children: [
            Padding(padding:EdgeInsets.only(top: 50),

            child: Text("Sing in",style: TextStyle(fontSize:30,fontWeight: FontWeight.bold),)),
            Padding(
              padding:EdgeInsets.all(30),
              child: TextFormField(

              validator: (value){
                if(value==null || value.isEmpty) {
                  return "please enter the username";

                }
                return null;
              },
                decoration: InputDecoration(hintText: "Email"),
            ),
            ),
            Padding(
                padding:EdgeInsets.all(30),
              child: TextFormField(
                obscureText: true,
                validator: (value){
                  if(value==null||value.isEmpty){
                    return "enter the password";
                  }
                  return null;
                },
                  decoration: InputDecoration(hintText: ("Password")),
              ),
            ),
            ElevatedButton(
                onPressed:(){

                }, child: Text('Login'),)
          ],
        )

    );
  }
}

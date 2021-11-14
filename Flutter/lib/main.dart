import 'dart:async';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds:3),
  ()=>Navigator.pushReplacement(context, MaterialPageRoute
    (builder: (context)=> SecondScreen()
  )
  )
    );
  }
  @override
  Widget build(BuildContext context){
    return Container(
      color:Colors.blue,
      child: Image.asset('assets/images/logo.png')
    );
  }
}

class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("MOCAP")),
      body:Center(
    child:Text("Welcome To MOCAP",textScaleFactor: 2,)
    ),
    );
  }
}
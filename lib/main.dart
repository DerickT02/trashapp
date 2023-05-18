import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


  class MyApp extends StatelessWidget{
    const MyApp({super.key});
    @override
    Widget build(BuildContext context){
      return MaterialApp(
        home: MyHome(),
      );
    }
  }

  class MyHome extends StatelessWidget{
    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: const Text("Trash App"),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                onPressed: (){
                  Scaffold.of(context).openDrawer();
                }, 
                  icon: const Icon(Icons.menu),
              );
            }
          ),
          
        ),
        drawer: Drawer(),
      );
    }
  
  }
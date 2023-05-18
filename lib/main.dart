import 'package:flutter/material.dart';
import 'package:trashapp/pages/trashlist.dart';


void main() {
  runApp(const MyApp());
}


  class MyApp extends StatelessWidget{
    const MyApp({super.key});
    @override
    Widget build(BuildContext context){
      return const MaterialApp(
        home: MyHome(),
      );
    }
  }


  
  class MyHome extends StatelessWidget{
    const MyHome({super.key});
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
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),

                child: Text("Menu"),
              ),
              ListTile(
                title: Text("View All Trash"),
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder:(context) => const TrashList(),)
                  );
                },
              ),
              ListTile(
                title: Text("Join The Movement"),
              )
            ],
          ),
        ),
      );
    }
  
  }
import 'package:flutter/material.dart';
import 'package:trashapp/pages/createtrash.dart';


class TrashItem{
  String name = "";
  double value = 0.0;

  TrashItem(String name, double value){
    this.name = name;
    this.value = value;
  }
}


class TrashList extends StatefulWidget{
  const TrashList({super.key});

  @override
  State<TrashList> createState() => _TrashListState();
}

class _TrashListState extends State<TrashList> {
  var trashItems = <TrashItem>{}; 

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trash List"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => CreateTrash()));
        },
        child: const Icon(Icons.add),
      
      ),
    );
  }
}
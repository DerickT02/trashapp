import "package:flutter/material.dart";
import "package:trashapp/pages/trashlist.dart";

class CreateTrash extends StatefulWidget{
  const CreateTrash({super.key});
  @override

  State<CreateTrash> createState() => _CreateTrashState();
}

class _CreateTrashState extends State<CreateTrash>{
  @override
  Widget build(BuildContext build){
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Trash"),
      ),
      body: CreateTrashForm()
    );
  }
}

class CreateTrashForm extends StatefulWidget{
  const CreateTrashForm({super.key});

  @override
  CreateTrashFormState createState(){
    return CreateTrashFormState();
  }
}

class CreateTrashFormState extends State<CreateTrashForm>{
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    return Form(
      key: _formKey,
      child: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SizedBox(height: 50),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
            return null;
            },
          ),

          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
            return null;
            },
          ),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            
            child: ElevatedButton(
              child: const Text("Add"),
              onPressed: () {
                if(_formKey.currentState!.validate()){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data'))
                  );
                }
              },
              ),
          )




        ]
      ),
    );
  }
}


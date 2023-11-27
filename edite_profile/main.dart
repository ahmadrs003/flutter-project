import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _formKey = GlobalKey<FormState>();
  TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 30,),

      
              Text("Profile Information"),
                

              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.only(top:10.0, left: 35.0, right: 35.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Name",
                    hintText: " ",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                    return "Can't be empty!.";
                    }
                    
                  },
                ),
              ),

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(top:10.0, left: 35.0, right: 35.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    hintText: " ",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                    return "Can't be empty!.";
                    }
                    
                  },
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
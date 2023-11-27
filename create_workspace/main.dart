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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text("A New Journey Awaits", textScaleFactor: 2,),

              SizedBox(height: 40,),

              Padding(
                padding: const EdgeInsets.only(top:10.0, left: 35.0, right: 35.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Why are you creating ths workpace?",
                    hintText: "Work/ College Course/...",
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

              SizedBox(height: 30,),

              Padding(
                padding: const EdgeInsets.only(top:10.0, left: 35.0, right: 35.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "What do you whant to call it?",
                    hintText: "The Best Workspace In The World!",
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

              SizedBox(height: 30,),

              ElevatedButton(
                onPressed: (){
                  if(_formKey.currentState!.validate()){
                    var sb = SnackBar(content: Text("${myController.text}"));
                    ScaffoldMessenger.of(context).showSnackBar(sb);
                  }
                }, 

                child: Text("Sing Up",style: TextStyle(
                  fontWeight: FontWeight.w100,
                  fontSize: 20),
                ),

                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(200, 108, 123, 149)), // Change button color
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0), // Change corner radius
                    ),
                  ),

                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.symmetric(vertical: 20.0, horizontal: 180.0),
                  // Adjust size by changing the values
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
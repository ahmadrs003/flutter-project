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

              Text("Let's Get To Know You More",textScaleFactor: 2,),

              SizedBox(height: 35,),

              Padding(
                padding: const EdgeInsets.only(left: 35.0, right: 35.0, bottom: 25.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    label: Text("Your full name"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                    return "Enter Your Full Name.";
                    }
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 35.0, right: 35.0, bottom: 25.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "What industry your in?",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                    return "Enter Your Industry.";
                    }
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 35.0, right: 35.0, bottom: 25.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Why are you using the app?",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  validator: (value){
                    if(value!.length < 30){
                    return "Enter atleast 30 leter";
                    }
                  },
                ),
              ),

              ElevatedButton(
                onPressed: (){
                  if(_formKey.currentState!.validate()){
                    var sb = SnackBar(content: Text("${myController.text}"));
                    ScaffoldMessenger.of(context).showSnackBar(sb);
                  }
                }, 

                child: Text("Create my account",style: TextStyle(
                  fontWeight: FontWeight.w100,
                  fontSize: 15),
                ),

                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(200, 108, 123, 149)), // Change button color
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0), // Change corner radius
                    ),
                  ),

                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.symmetric(vertical: 20.0, horizontal: 150.0),
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
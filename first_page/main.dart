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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(19, 0, 0, 0),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              Text("Welcom to GetDone",style: TextStyle(fontSize: 40, fontWeight: FontWeight.w300),),

              SizedBox(height: 30,),

              Text("Where Your Tasks Find Wings.",style: TextStyle(fontSize: 25),),

              SizedBox(height: 70,),

              ElevatedButton(
                onPressed: (){}, 
                child: Text("Learn More",style: TextStyle(fontWeight: FontWeight.w100),),
 
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(200, 108, 123, 149)), // Change button color
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0), // Change corner radius
                    ),
                  ),

                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.symmetric(vertical: 20.0, horizontal: 140.0), // Adjust size by changing the values
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
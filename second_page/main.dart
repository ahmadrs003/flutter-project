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
        backgroundColor: const Color.fromARGB(20,108,123, 149),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(height: 20,),

              Image.asset("image/img-here.png"),

              Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Text("Seamlessly organize, prioritize,\nand triumph over your to-dos,\nturning every task into a stroke of\naccomplishment with gentle\nreminders leading the way.",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w100
                  ),
                ),
              ),

              SizedBox(height: 50,),

              ElevatedButton(
                onPressed: (){}, 
                child: Text("Get Started",style: TextStyle(
                  fontWeight: FontWeight.w200,
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
                  EdgeInsets.symmetric(vertical: 20.0, horizontal: 150.0),
                  // Adjust size by changing the values
                  ),
                ),
              ),

              SizedBox(height: 20,)
              
            ],
          ),
        ),
      ),
    );
  }
}
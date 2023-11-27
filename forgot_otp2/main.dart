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
        appBar: AppBar(
          title: Text("Forget Password",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w100
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        
        body: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Text("Create a new password in time",textScaleFactor: 2,),

              SizedBox(height: 20,),

              Text("An email was sent to you containing a\nunique code use this code to verify your\naccount.",
              style: TextStyle(
                fontSize: 24
              ),),

              SizedBox(height: 35,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "XXXXXX",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  validator: (value){
                    if(value!.length > 6 || value.length < 5){
                    return "Enter Code With 6 Digits.";
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

                child: Text("Verify my account",style: TextStyle(
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

              SizedBox(height: 100,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Didn't get the code?"),  
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: TextButton(
                        onPressed: (){}, 
                        
                        child: Text("Send it again", 
                        style: TextStyle(
                          decoration: TextDecoration.underline, 
                          color: Colors.black),
                        ),
                      ),
                    )
                  ],

                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
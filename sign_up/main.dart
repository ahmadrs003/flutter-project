import 'package:flutter/material.dart';
import 'package:sign_button/sign_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(height: 30),
              Image.asset("image/login-phrase.png"),

              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(top:10.0, left: 35.0, right: 35.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    label: Text("Email"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  validator: (value){
                    if(value!.isEmpty || !value.contains("@")){
                    return "Enter your email correctly.";
                    }
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top:20.0, left: 35.0, right: 35.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  validator: (value) {
                    if (value!.length < 8) {
                      return "Password length should be at least 8";
                    }
                    return null;
                  },
                  controller: _passwordController,
                  obscureText: true,
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top:20.0, left: 35.0, right: 35.0, bottom: 20.0 ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  validator: (value) {
                    if (value != _passwordController.text) {
                      return "Passwords do not match";
                    }
                    return null;
                  },
                  controller: _confirmPasswordController,
                  obscureText: true,
                ),
              ),

              ElevatedButton(
                onPressed: (){
                  if(_formKey.currentState!.validate()){
                    var sb = SnackBar(content: Text("${_passwordController.text}"));
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

              SizedBox(height: 20,),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 45,),
                  Text("Or continue with"),         
                ],
              ),

              SizedBox(height: 20,),

              SignInButton(
                buttonType: ButtonType.google,
                buttonSize: ButtonSize.large, // small(default), medium, large
                onPressed: () {}
              ),

              SizedBox(height: 20,),

              SignInButton(
                buttonType: ButtonType.apple,
                buttonSize: ButtonSize.large, // small(default), medium, large
                onPressed: () {}
              ),

              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Already have an account?"),  
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: TextButton(
                        onPressed: (){}, 
                        
                        child: Text("Log in", 
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

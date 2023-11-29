import 'package:flutter/material.dart';
import 'package:sign_button/sign_button.dart';

void main() => runApp(Login());

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
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
            children: [
              SizedBox(height: 40,),
              Image.asset("image/login-phrase.png"),
              SizedBox(height: 60,),
              
              //Email
              Padding(
                padding: const EdgeInsets.only(top:10.0, left: 35.0, right: 35.0),
                  child: TextFormField(
                    controller: _emailController,
                    decoration:  InputDecoration(
                      
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                       focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      hintText: "enter your Email",
                      labelText: "Email",
                      labelStyle: TextStyle(
                        color: Color.fromARGB(148, 0, 0, 0),
                      ),
                      filled: true,
                    ),
                    validator: (value){
                      if (value!.isEmpty || !value.contains("@")){
                        return "pleas enter your E-mail";
                      }
                    },
                  ),
              ),
              SizedBox(height: 10,),

              //password
              Padding(
                padding: const EdgeInsets.only(top:10.0, left: 35.0, right: 35.0,bottom: 10),
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration:  InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      hintText: "Password",
                      labelText: "Password", 
                      labelStyle: TextStyle(
                        color: Color.fromARGB(148, 0, 0, 0),
                      ),
                      filled: true,
                    ),
                    validator: (value){
                      if (value!.isEmpty){
                        return "pleas enter your Password";
                      }
                      return null;
                    },
                  ),
              ),
              SizedBox(height: 10,),

              //sing in 
              ElevatedButton(
                onPressed: (){
                  if(_formKey.currentState!.validate()){
                    var sb = SnackBar(content: Text("${myController.text}"));
                    ScaffoldMessenger.of(context).showSnackBar(sb);
                  }
                }, 

                child: Text("Log in",style: TextStyle(
                  fontWeight: FontWeight.w100,
                  fontSize: 20),
                ),
 
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(200, 108, 123, 149)), // Change button color
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),

                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.symmetric(vertical: 20.0, horizontal: 180.0),
                  // Adjust size by changing the values
                  ),
                ),
              ),
              SizedBox(height: 10,),

              //forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: TextButton(onPressed: (){},
                      child: Text("forgot Password?",
                      style: TextStyle(color: Colors.black),),
                      ),  
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),

              //google & apple button
              SignInButton(
                buttonType: ButtonType.google,
                buttonSize: ButtonSize.large,
                onPressed: (){
                  print("clik");
                }
              ),
              SizedBox(height: 15,),

              SignInButton(
                buttonType: ButtonType.apple,
                buttonSize: ButtonSize.large,
                onPressed: (){
                  print("clik");
                }
              ),
              SizedBox(height: 15,),

              //Create an account
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45.0 ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Don't have an account?"),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: TextButton(onPressed: (){},
                      
                      child: Text("Create one", 
                        style: TextStyle(
                          decoration: TextDecoration.underline, 
                          color: Colors.black),
                        ),
                      ),  
                    ),
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
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
          title: Text("Create a Task",
          style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),

        body: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(40, 20, 40, 0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Task Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Task name can't be empty.";
                    }
                    return null;
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(40, 20, 40, 0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Add a description",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 70, horizontal: 10),
                  ),       
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(40, 20, 40, 0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Upload files",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.upload),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(40, 20, 40, 0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Select workspace",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.keyboard_arrow_down),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(40, 10, 40, 0),
                    child: Text(
                      'Set a deadline',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(120, 0, 40, 0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: '08/12/2024',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.calendar_month),
                            onPressed: () {},
                          ),
                          contentPadding: EdgeInsets.all(16.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20,),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(40, 10, 62, 0),
                    child: Text(
                      'Task State',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(120, 0, 40, 0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Pending',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.keyboard_arrow_down),
                            onPressed: () {},
                          ),
                          contentPadding: EdgeInsets.all(16.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20,),

              ElevatedButton(
                onPressed: (){
                  if(_formKey.currentState!.validate()){
                    var sb = SnackBar(content: Text("${myController.text}"));
                    ScaffoldMessenger.of(context).showSnackBar(sb);
                  }
                }, 

                child: Text("Create Taskes",style: TextStyle(
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
                  EdgeInsets.symmetric(vertical: 20.0, horizontal: 160.0),
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
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Workspaces",
        style: TextStyle(
          color: Colors.black,
        ),),
      ),

      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(
              width: 300,
              height: 30,
              child: Text("In the Lab of Productivity",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17
              ),
              )
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child:  Container(
                    height: 180,
                    width: 180,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
                      ),
                      child: Center(
                        child: Text("Create new\nWorkspace",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        )
                      ),
                      color: Color.fromARGB(200, 108, 123, 149),
                    ),
                  ),
                ),
                SizedBox(width: 20,),

                GestureDetector(
                  onTap: () {},
                  child:  Container(
                    height: 180,
                    width: 180,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
                      ),
                      child: Center(
                        child: Text("10 Tasks\n\nOperating System\nCollege Workspace",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        )
                      ),
                      color: Color.fromARGB(199, 211, 217, 226),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child:  Container(
                    height: 180,
                    width: 180,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
                      ),
                      child: Center(
                        child: Text("10 Tasks\n\nOperating System\nCollege Workspace",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        )
                      ),
                      color: Color.fromARGB(199, 211, 217, 226),
                    ),
                  ),
                ),
                SizedBox(width: 20,),

                GestureDetector(
                  onTap: () {},
                  child:  Container(
                    height: 180,
                    width: 180,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
                      ),
                      child: Center(
                        child: Text("10 Tasks\n\nOperating System\nCollege Workspace",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        )
                      ),
                      color: Color.fromARGB(199, 211, 217, 226),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child:  Container(
                    height: 180,
                    width: 180,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
                      ),
                      child: Center(
                        child: Text("10 Tasks\n\nOperating System\nCollege Workspace",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        )
                      ),
                      color: Color.fromARGB(199, 211, 217, 226),
                    ),
                  ),
                ),
                SizedBox(width: 20,),

                GestureDetector(
                  onTap: () {},
                  child:  Container(
                    height: 180,
                    width: 180,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
                      ),
                      child: Center(
                        child: Text("10 Tasks\n\nOperating System\nCollege Workspace",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        )
                      ),
                      color: Color.fromARGB(199, 211, 217, 226),
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      )
    );
  }
}
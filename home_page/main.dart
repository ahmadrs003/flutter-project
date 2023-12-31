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

  final List<TaskItemData> tasks = [
    TaskItemData(
      title: "Data Base",
      subtitle: "Week one assignment",
      date: "23rd. Oct. 23",
    ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [

              SizedBox(height: 20,),
              
              Row(
                children: [
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hello Ahmad",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                        ),
                      ),

                      Text("Thrilled to Have you Here!",
                      style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                  SizedBox(width: 170,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.account_circle_outlined),
                            onPressed: () {},
                          ),

                          IconButton(
                            icon: Icon(Icons.add_circle_outline),
                            onPressed: () {},
                          ),
                        ],
                      ) ,

                    ],
                  ),
                ],
              ),

              SizedBox(height: 30,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Close-Call Tasks",
                    style: TextStyle(
                      fontSize: 17,
                      ),
                    ),

                    SizedBox(width: 200,),

                    Align(
                      alignment: Alignment.bottomLeft,
                      child: TextButton(
                        onPressed: (){}, 
                        child: Text("See More"),
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(
                height: 240,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 34),
                    child: Column(
                      children: [
                        SizedBox(height: 5,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start, 
                          //the header title
                          children: [
              
                            // ListView.builder for dynamic tasks
                            ListView.builder(
                              itemCount: tasks.length *5,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                final taskIndex = index % tasks.length;
                                return Column(
                                  children: [
                                    TaskItem(task: tasks[taskIndex]),
                                    SizedBox(height: 10,)
                                  ],
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Workspaces",
                    style: TextStyle(
                      fontSize: 17,
                      ),
                    ),

                    SizedBox(width: 250,),

                    Align(
                      alignment: Alignment.bottomLeft,
                      child: TextButton(
                        onPressed: (){}, 
                        child: Text("See More"),
                      ),
                    )
                  ],
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 25,),
                  GestureDetector(
                    onTap: () {},
                    child:  Container(
                      height: 150,
                      width: 120,
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
                  SizedBox(width: 10,),
              
                  GestureDetector(
                    onTap: () {},
                    child:  Container(
                      height: 150,
                      width: 150,
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
                  SizedBox(width: 10,),
              
                  GestureDetector(
                    onTap: () {},
                    child:  Container(
                      height: 150,
                      width: 150,
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
                  SizedBox(width: 10,),

                  GestureDetector(
                    onTap: () {},
                    child:  Container(
                      height: 150,
                      width: 150,
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
                  SizedBox(width: 10,),
                  
                ],
                          ),
              ),
              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Future Focus",
                    style: TextStyle(
                      fontSize: 17,
                      ),
                    ),

                    SizedBox(width: 250,),

                    Align(
                      alignment: Alignment.bottomLeft,
                      child: TextButton(
                        onPressed: (){}, 
                        child: Text("See More"),
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(
                height: 240,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 34),
                    child: Column(
                      children: [
                        SizedBox(height: 5,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start, 
                          //the header title
                          children: [
              
                            // ListView.builder for dynamic tasks
                            ListView.builder(
                              itemCount: tasks.length *5,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                final taskIndex = index % tasks.length;
                                return Column(
                                  children: [
                                    TaskItem(task: tasks[taskIndex]),
                                    SizedBox(height: 10,)
                                  ],
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),

              ElevatedButton(
                onPressed: (){}, 

                child: Text("Create new task",style: TextStyle(
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
                  EdgeInsets.symmetric(vertical: 20.0, horizontal: 150.0),
                  // Adjust size by changing the values
                  ),
                ),
              ),
              SizedBox(height: 30,)

            ],
          ),
          
        ),
      ),
    );
  }
}

class TaskItemData {
   String title;
   String subtitle;
   String date;

  TaskItemData({
    required this.title,
    required this.subtitle,
    required this.date,
  });
}

class TaskItem extends StatelessWidget {
  final TaskItemData task;

  const TaskItem({Key? key, required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {

        //  button press logic here
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        width: 550,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.black),
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              width: 13,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(task.title, style: TextStyle(color: Colors.black)),
                    Text(task.subtitle, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                    Row(
                      children: [
                        Text(task.date, style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
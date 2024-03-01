import 'package:flutter/material.dart';
import 'package:first_flutter_app/Task1.dart';
import 'package:first_flutter_app/Task.dart';

class Taskslist extends StatelessWidget {
  const Taskslist({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.red.shade300,
          ),
        ),
        title: const Text("Todo list"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: Image.asset(
              "image/images (1).jpg",
              width: width * 0.8,
              height: height * 0.30,
            ),
          ),
          const Row(
            children: [
              Text(
                "Tasks list",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.008,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: height * 0.40,
              child: const TaskWidget(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: MaterialButton(
                  minWidth: width * 0.35,
                  height: height * 0.06,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const NewTask();
                    }));
                  },
                  color: Colors.red.shade300,
                  child: const Text(
                    "Create Task",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          )
        ]),
      ),
    );
  }
}

List allTasks = [
  ["UX/Ui", "Description", "8/3/10"],
  ["Reading", "Description", "8/3/10"],
  ["Study", "Description", "8/3/10"],
  ["Dart", "Description", "8/3/10"],
  ["Dart", "Description", "8/3/10"],
];

class TaskWidget extends StatelessWidget {
  const TaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> eachTask = [];
    var height = MediaQuery.of(context).size.height;
    for (int i = 0; i < allTasks.length; i++) {
      Widget one = Task(allTasks[i][0], allTasks[i][1], allTasks[i][2]);
      eachTask.add(one);
      eachTask.add(
        SizedBox(
          height: height * 0.02,
        ),
      );
    }
    return SingleChildScrollView(
      child: Column(children: eachTask),
    );
  }
}

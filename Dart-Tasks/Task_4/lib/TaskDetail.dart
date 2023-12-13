import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final String name, description, duedate;
  const Detail(this.name, this.description, this.duedate, {super.key});

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
        title: const Text("Task Detail"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(children: [
          Image.asset(
            "image/todolist.png",
            height: height * 0.30,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Title",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.blueGrey.shade200,
            ),
            height: height * 0.05,
            width: width,
            child: Text(
              name,
              style: const TextStyle(fontSize: 20),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Description",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.blueGrey.shade200,
            ),
            height: height * 0.1,
            width: width,
            child: Text(description),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Deadline",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.blueGrey.shade200,
            ),
            width: width,
            height: height * 0.05,
            child: Text(duedate),
          ),
        ]),
      ),
    );
  }
}

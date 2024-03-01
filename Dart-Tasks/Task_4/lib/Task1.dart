import 'package:flutter/material.dart';

class NewTask extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  NewTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.red.shade300,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {}, 
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Form(
          key: _formKey,
        child: Column(children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Create New Task",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            height: height * 0.001,
            color: Colors.black,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Main task Name",
                style: TextStyle(
                  color: Colors.red.shade300,
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            height: height * 0.06,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 4,
                      color: Colors.black45,
                      blurStyle: BlurStyle.outer)
                ]),
            child: const TextField(
              decoration: InputDecoration(
                  border: InputBorder.none, labelText: "Task Name"),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Due date",
                style: TextStyle(
                  color: Color.fromARGB(255, 224, 130, 130),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
              height: height * 0.05,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black45,
                      spreadRadius: 4,
                      blurRadius: 5,
                      blurStyle: BlurStyle.outer,
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                "assets/front (1).jpg",
                width: width,
                height: height * 0.3,
              ),
                    const Text("April 29/2023"),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.calendar_month,
                          color: Colors.red.shade300,
                        ))
                  ],
                ),
              )),
          SizedBox(
            height: height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Description",
                style: TextStyle(
                  color: Colors.red.shade300,
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            height: height * 0.1,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 4,
                      color: Colors.black45,
                      blurStyle: BlurStyle.outer)
                ]),
            child: const TextField(
              decoration: InputDecoration(
                  border: InputBorder.none, labelText: "First...."),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Center(
              child: MaterialButton(
            minWidth: width * 0.45,
            height: height * 0.055,
            color: Colors.red.shade300,
            onPressed: () {},
            child: const Text(
              "Add Task",
              style: TextStyle(color: Colors.white),
            ),
          ))
        ]),
       ),
      ),
    );
  }
}

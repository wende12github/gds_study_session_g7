import 'package:flutter/material.dart';
import 'package:first_flutter_app/Tasklist2.dart';

void main() {
  runApp(const Todolist());
}

class Todolist extends StatelessWidget {
  const Todolist({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Todolist",
      theme: ThemeData(
          //useMaterial3: true,
          ),
      debugShowCheckedModeBanner: false,
      home: Frontpage(),
    );
  }
}

class Frontpage extends StatelessWidget {
  const Frontpage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 71, 46, 46),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images (1).jpg",
                width: width,
                height: height * 0.4,
              ),
              SizedBox(
                height: height * 0.2,
              ),
              MaterialButton(
                color: Color.fromARGB(255, 123, 146, 165),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Taskslist();
                  }));
                },
                minWidth: width * 0.5,
                height: height * 0.05,
                child: const Text(
                  "Get started",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}

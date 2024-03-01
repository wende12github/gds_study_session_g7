import 'package:flutter/material.dart';
import 'package:first_flutter_app/taskdetail.dart';

class Task extends StatelessWidget {
  final String name, description, duedate;
  const Task(this.name, this.description, this.duedate, {super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Detail(name, description, duedate);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Container(
          height: height * 0.07,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  spreadRadius: 5,
                  blurRadius: 4,
                  color: Color.fromARGB(115, 14, 13, 13),
                  blurStyle: BlurStyle.outer,
                )
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/front (1).jpg",
                width: width,
                height: height * 0.3,
              ),
              SizedBox(
                width: width * 0.2,
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name[0],
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                )),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                "assets/images (1).jpg",
                width: width * 0.8,
                height: height * 0.3,
              ),
                    Text(
                      name,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                    Text(
                      duedate,
                      style: const TextStyle(fontSize: 10),
                    ),
                    VerticalDivider(
                      thickness: 1.5,
                      color: Colors.green.shade400,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

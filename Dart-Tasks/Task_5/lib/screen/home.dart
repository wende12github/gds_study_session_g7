import 'package:flutter/material.dart';

class UserInfomation {
  final String name;
  final String message;
  final String timestamp;
  final String profilePicture;
  final int messageCount;

  UserInfomation(this.name, this.message, this.timestamp, this.profilePicture,
      this.messageCount);
}

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<UserInfomation> userInformation = [
    UserInfomation('Charles J.', 'You are the man who wants everybody.',
        '7:45pm', 'assets/Charles 10.webp', 3),
    UserInfomation(
        'James R.',
        'Where the meeting is carried out? What is the required to set on meeting?',
        '4:30am',
        'assets/James 1.jpg',
        1),
    UserInfomation(
        'Jessica Watson',
        'The program has been arranged, then What is next?',
        '4:26am',
        'assets/Jessica 7.jpeg',
        1),
    UserInfomation('Joseph', 'Let take rest, Am so tired.', '6:00pm',
        'assets/Joseph 6.webp', 2),
    UserInfomation('Linda', "No, way! How could you do that?", '7:00am',
        'assets/Linda 4.webp', 3),
    UserInfomation(
        'Lisa',
        "Hi love! I thought, We can explore that new park If you have not any Weekend PLAN? ",
        '12:54am',
        'assets/Lisa 8.jpeg',
        1),
    UserInfomation(
        'Mary K.',
        "Feeling a bit overwhelmed with deadlines. Any tips for staying productive?",
        '13:38',
        'assets/Mary 3.webp',
        2),
    UserInfomation(
        'Nancy Watson',
        "I a shamefaced, because of you. Why you always bereaved me?",
        '9:45am',
        'assets/Nancy 9.webp',
        3),
    UserInfomation(
        'Robert M.',
        "When the time the mass media carried out tomorrows? Please, let me know I do not want to miss it.",
        '7:00pm',
        'assets/Robert 2.jpg',
        2),
    UserInfomation(
        'Susan T.',
        "Feeling grateful for our friendship! Thanks for always being there for me and You should know this, Am lucky to being your friend.",
        '3:45am',
        'assets/Susan 5.jpeg',
        5),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Basic',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        backgroundColor: Color(0xFF0D68B3),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
            color: Colors.white,
          )
        ],
      ),
      body: ListView.builder(
        itemCount: userInformation.length,
        itemBuilder: (context, index) {
          return buildUser(userInformation[index]);
        },
      ),
    );
  }
}

Widget buildUser(UserInfomation userInfomation) {
  return Card(
    margin: const EdgeInsets.all(4),
    child: ListTile(
        leading: CircleAvatar(
          radius: 32,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 29,
            backgroundImage: Image.asset(userInfomation.profilePicture).image,
          ),
        ),
        title: Text(
          userInfomation.name,
          style: const TextStyle(color: Colors.deepPurple, fontSize: 18),
        ),
        subtitle: Text(
          userInfomation.message,
          style: const TextStyle(color: Colors.black, fontSize: 14),
        ),
        trailing: Column(
          children: [
            Text(
              userInfomation.timestamp,
              style: const TextStyle(color: Colors.black, fontSize: 12),
            ),
            const SizedBox(height: 15),
            if (userInfomation.messageCount > 0)
              CircleAvatar(
                radius: 10,
                backgroundColor: Color.fromRGBO(250, 50, 40, 0.3),
                child: Text(
                  userInfomation.messageCount.toString(),
                  style: const TextStyle(fontSize: 11, color: Colors.white),
                ),
              )
          ],
        )),
  );
}

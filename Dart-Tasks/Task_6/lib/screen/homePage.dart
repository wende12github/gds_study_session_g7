import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'GDSC BOOKSTORE',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.sort,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Container(
              width: 22.0,
              height: 22.0,
            ),
          ),
        ],
      ),
      body: ListView(children: [
        Row(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Looking for...',
                        hintStyle: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                        ),
                        suffixIcon: Icon(
                          Icons.search,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.15,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 12, 94, 247),
                  borderRadius:
                      BorderRadius.circular(8.0), // Adjust radius as needed
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.tune, color: Colors.white),
                ),
              )
            ]),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: SizedBox(
              height: 200,
              child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromARGB(255, 57, 116, 243),
                              Color.fromARGB(255, 105, 149, 243),
                              Color.fromARGB(255, 3, 108, 156),
                            ])),
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(children: [
                        Row(children: [
                          Spacer(),
                          Text(
                            "sep 23 2023",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ]),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.pause,
                              size: 40,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    "Today a reader\n Tomorrow a",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Text(
                                  "LEADER",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.save_outlined,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.bookmark_border_outlined,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.share,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.pause,
                              size: 40,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ))),
        ),
        const Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "Categories",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 192, 192, 194),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: Icon(Icons.heart_broken,
                                  color: Colors.black)),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: Text(
                              "Health",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 175, 175, 177),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                            Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child:
                                    Icon(Icons.biotech, color: Colors.black)),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: Text(
                                "Science",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ])))),
              Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 152, 152, 153),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                            Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Icon(Icons.precision_manufacturing,
                                    color: Colors.black)),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: Text(
                                "Technology",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ])))),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 143, 143, 145),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Icon(Icons.history_edu_rounded,
                                  color: Colors.black)),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: Text(
                              "Hitory",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 154, 154, 155),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Icon(Icons.person_search,
                                  color: Colors.black)),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: Text(
                              "Philosophy",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
            ],
          ),
        ),
        const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Recommended",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                Spacer(),
                Icon(Icons.navigate_next, color: Colors.black),
              ],
            )),
        Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: Column(children: [
                  Image.asset('assets/ፓፒዮ.png'),
                  Container(
                    width: 100,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              width: 40,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 255, 140, 0),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Column(children: [
                                Icon(Icons.star, color: Colors.white),
                                Text(
                                  "4.7",
                                  style: TextStyle(color: Colors.white),
                                )
                              ]),
                            ),
                          )
                        ]),
                  ),
                  const SizedBox(height: 5),
                  const Text("Papillion Based\nOn true story",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(children: [
                  Image.asset('assets/የበደል ካሳ.jpg'),
                  Container(
                    width: 150,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              width: 40,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 255, 140, 0),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Column(children: [
                                Icon(Icons.star, color: Colors.white),
                                Text(
                                  "4.5",
                                  style: TextStyle(color: Colors.white),
                                )
                              ]),
                            ),
                          )
                        ]),
                  ),
                  const SizedBox(height: 5),
                  const Text("Yebedel kassa\nNovel",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(children: [
                  Image.asset('assets/ማህሌት.jpg'),
                  Container(
                    width: 150,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              width: 40,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 255, 140, 0),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Column(children: [
                                Icon(Icons.star, color: Colors.white),
                                Text(
                                  "4.5",
                                  style: TextStyle(color: Colors.white),
                                )
                              ]),
                            ),
                          )
                        ]),
                  ),
                  const SizedBox(height: 5),
                  const Text("Mahilet by\nAdam Reta",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ]),
              ),
              const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("New Books",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                      Spacer(),
                      Icon(Icons.navigate_next, color: Colors.black),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(children: [
                  Image.asset('assets/rich dad.jpg'),
                  Container(
                    width: 150,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              width: 40,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 255, 140, 0),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Column(children: [
                                Icon(Icons.star, color: Colors.white),
                                Text(
                                  "4.5",
                                  style: TextStyle(color: Colors.white),
                                )
                              ]),
                            ),
                          ),
                        ]),
                  ),
                  const SizedBox(height: 5),
                  const Text("Rich Dad Poor\nDad Ro. T",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(children: [
                  Image.asset('assets/ፒያሳ.jpg'),
                  Container(
                    width: 150,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              width: 40,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 255, 140, 0),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Column(children: [
                                Icon(Icons.star, color: Colors.white),
                                Text(
                                  "4.5",
                                  style: TextStyle(color: Colors.white),
                                )
                              ]),
                            ),
                          ),
                        ]),
                  ),
                  const SizedBox(height: 5),
                  const Text("Piyasa Muhamud\nGa Tebkig",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(children: [
                  Image.asset('assets/የተቆለፈበት.jpg'),
                  Container(
                    width: 150,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              width: 40,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 255, 140, 0),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Column(children: [
                                Icon(Icons.star, color: Colors.white),
                                Text(
                                  "4.5",
                                  style: TextStyle(color: Colors.white),
                                )
                              ]),
                            ),
                          ),
                        ]),
                  ),
                  const SizedBox(height: 5),
                  const Text("Yetekolefebet\nKulf",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ]),
              ),
            ]),
          ),
        ),
        const Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Text("Trending",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                Spacer(),
                Icon(Icons.navigate_next, color: Colors.black),
              ],
            )),
        Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(children: [
                  Image.asset('assets/trevor.jpg'),
                  Container(
                    width: 150,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              width: 40,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 255, 140, 0),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Column(children: [
                                Icon(Icons.star, color: Colors.white),
                                Text(
                                  "4.5",
                                  style: TextStyle(color: Colors.white),
                                )
                              ]),
                            ),
                          ),
                        ]),
                  ),
                  const SizedBox(height: 5),
                  const Text("Born a crime by\nTrevor Noha",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(children: [
                  Image.asset('assets/born.jpg'),
                  Container(
                    width: 150,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              width: 40,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 255, 140, 0),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Column(children: [
                                Icon(Icons.star, color: Colors.white),
                                Text(
                                  "4.5",
                                  style: TextStyle(color: Colors.white),
                                )
                              ]),
                            ),
                          ),
                        ]),
                  ),
                  const SizedBox(height: 5),
                  const Text("Evolution of the\nLearning brain",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(children: [
                  Image.asset('assets/ሌላ ሰው.jpg'),
                  Container(
                    width: 150,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              width: 30,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 255, 140, 0),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Column(children: [
                                Icon(Icons.star, color: Colors.white),
                                Text(
                                  "4.5",
                                  style: TextStyle(color: Colors.white),
                                )
                              ]),
                            ),
                          ),
                        ]),
                  ),
                  const SizedBox(height: 5),
                  const Text("Lela Sew by\nMhiret debeb",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ]),
              ),
            ]),
          ),
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.newspaper,
            color: Colors.black,
          ),
          label: 'News',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.auto_stories,
            color: Colors.black,
          ),
          label: 'Read',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.black,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.my_library_books,
            color: Colors.black,
          ),
          label: 'Books',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Colors.black,
          ),
          label: 'Profile',
        ),
      ]),
    );
  }
}

import 'package:flutter/material.dart';

class BookStore extends StatefulWidget {
  const BookStore({super.key});

  @override
  State<BookStore> createState() => _BookStoreState();
}

class _BookStoreState extends State<BookStore> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: AppBar(
              title: const Text('GDSC Book Store'),
              centerTitle: true,
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu_book_rounded,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40.0, 0, 0, 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 250,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(200, 218, 244, 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.search,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.filter_1_outlined,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(13, 0, 50.0, 0),
                        child: Container(
                          alignment: Alignment.center,
                          width: 300,
                          height: 200,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(200, 218, 244, 1),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          child: Image.asset(
                            'images/bookStoreBanner.jpg',
                            width: 300,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 120.0, 50),
                            child: Icon(
                              Icons.pause,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          SizedBox(width: 20),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 50.0, 50),
                            child: Icon(
                              Icons.pause,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(10, 45, 50.0, 30),
                            child: Text(
                              "Today a Reader Tomorrow a Leader",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 40, 0),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.bookmark,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 230, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Categories",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              height: 45,
                              width: 120,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(200, 218, 244, 1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child: Text(
                                  "Health",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 10,
                            ),
                            Container(
                              height: 45,
                              width: 120,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(200, 218, 244, 1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child: Text(
                                  "Science",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 10,
                            ),
                            Container(
                              height: 45,
                              width: 120,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(200, 218, 244, 1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child: Text(
                                  "Technology",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Row(children: [
                          const Text(
                            "Recomedation",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(160, 0, 0, 0),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black,
                                  size: 30,
                                )),
                          )
                        ]),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              height: 250,
                              width: 150,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(200, 218, 244, 1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Health",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 1),
                                    Image.asset(
                                      "images/bookStoreBanner.jpg",
                                      fit: BoxFit.cover,
                                      height: 190,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 10,
                            ),
                            Container(
                              height: 250,
                              width: 150,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(200, 218, 244, 1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Sciences",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 1),
                                    Image.asset(
                                      "images/appbar.png",
                                      fit: BoxFit.cover,
                                      height: 190,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 10,
                            ),
                            Container(
                              height: 250,
                              width: 150,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(200, 218, 244, 1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Technology",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 1),
                                    Image.asset(
                                      "images/stickman.jpg",
                                      fit: BoxFit.cover,
                                      height: 190,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark),
                label: "Saved",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.dashboard_customize),
                label: "BookMark",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
            currentIndex: currentIndex,
            selectedItemColor: const Color.fromRGBO(
                247, 61, 15, 1), // Set the color of the selected item
            unselectedItemColor: const Color.fromRGBO(
                247, 61, 15, 1), // Set the color of unselected items
            onTap: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ));
  }
}

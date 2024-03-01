import 'package:book_store/DescriptionPage.dart';
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
              title: const Text(
                'GDSC BOOKSTORE',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: "poppins",
                ),
              ),
              centerTitle: false,
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.dehaze_sharp,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 300,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(200, 218, 244, 1),
                          borderRadius: BorderRadius.all(Radius.circular(20))
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
                        padding: const EdgeInsets.all(10),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.settings,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Container(
                            alignment: Alignment.center,
                            width: 350,
                            height: 180,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(200, 218, 244, 1),
                              borderRadius: BorderRadius.all(Radius.zero)
                            ),
                            child: Image.asset(
                              'images/blue-texture.jpg',
                              width: 350,
                            //   height: 200,
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
                            mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.fromLTRB(10, 45, 50, 30),
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
                              padding: const EdgeInsets.fromLTRB(0, 0, 40, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.translate,
                                      color: Colors.white,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.bookmark,
                                      color: Colors.white,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.share,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
                                fontSize: 30,                                
                              ),
                            )
                          ],
                        ),
                      ),
                      Wrap(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              height: 45,
                              width: 120,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 206, 206, 206),
                                borderRadius: BorderRadius.circular(10),
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
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              height: 45,
                              width: 120,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 206, 206, 206),
                                borderRadius: BorderRadius.circular(10),
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
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              height: 45,
                              width: 120,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 206, 206, 206),
                                borderRadius: BorderRadius.circular(10),
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
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              height: 45,
                              width: 120,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 206, 206, 206),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child: Text(
                                  "Fiction",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 45,
                              width: 120,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 206, 206, 206),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child: Text(
                                  "Non-Fiction",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Row(children: [
                          const Text(
                            "Recommendations",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                            //   fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
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
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 280,
                                width: 130,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 8, 0, 0),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>DescriptionPage()));
                                        },
                                        child: Image.asset(
                                          "images/trevornoah.jpg",
                                          fit: BoxFit.cover,
                                          height: 190,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      const Text(
                                        "Born A Crime",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 280,
                                width: 130,                           
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                                  child: Column(
                                    children: [                                    
                                      Image.asset(
                                        "images/jamesclear.jpg",
                                        fit: BoxFit.cover,
                                        height: 190,
                                      ),
                                      const SizedBox(height: 10),
                                      const Text(
                                        "Atomic Habits",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 280,
                                width: 130,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 8, 0, 0),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "images/simonsinek.jpg",
                                        fit: BoxFit.cover,
                                        height: 190,
                                      ),
                                      const SizedBox(height: 10),
                                      const Text(
                                        "Start With Why",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
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

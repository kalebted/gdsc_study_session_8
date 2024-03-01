// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'SecondPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo List"),        
        actions: [
          Builder(
            builder: (BuildContext context) {
              // Use Builder widget to create a new context
              return IconButton(
                icon: const Icon(Icons.more_vert,
                    color: Colors.black), // Set the hamburger icon
                onPressed: () {
                  Scaffold.of(context).openDrawer(); // Open the drawer on icon press
                },
              );
            },
          ),
        ],
      ),
      
      body: ListView(
        children: [
          Center(
            child: Image.asset(
              'images/stickman.jpg',
              width: 300,
              height: 300,
            ),
          ),
          const Text(
            "Task List",
            style: TextStyle(fontSize: 20, fontFamily: 'Open Sans'),
            // textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Material(
                    elevation: 5.0, // Add elevation for shadow effect
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      height: 60,
                      padding: const EdgeInsets.all(20.0),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("U"),
                          Text("UI/UX App"),
                          Text("April-29-2023"),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10), // Add spacing between the boxes
                  Material(
                    elevation: 5.0, // No elevation for the next set of texts
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("U"),
                          Text("UI/UX App"),
                          Text("April-29-2023"),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10), // Add spacing between the boxes
                  Material(
                    elevation: 5.0, // No elevation for the next set of texts
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("U"),
                          Text("UI/UX App"),
                          Text("April-29-2023"),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10), // Add spacing between the boxes
                  Material(
                    elevation: 5.0, // No elevation for the next set of texts
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("U"),
                          Text("UI/UX App"),
                          Text("April-29-2023"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 240, 68, 15)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              child: const Text("Create Task"),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_customize),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
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
    );
  }
}

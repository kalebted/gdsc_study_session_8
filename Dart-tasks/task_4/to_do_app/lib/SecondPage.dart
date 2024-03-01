// ignore_for_file: file_names, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'ThirdPage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:logger/logger.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<String> titles = ["Task Name", "Due Date", "Description"];
  List<TextEditingController> controllers = [];
  List<String> inputValues = [];

  Future<void> saveInputsToSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // Save the values to SharedPreferences
    prefs.setString('mainTaskName', inputValues[0]);
    prefs.setString('dueDate', inputValues[1]);
    prefs.setString('description', inputValues[2]);
  }

  Future<Map<String, String>> getInputsfromSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // Retrieve the values from SharedPreferences
    String? name = prefs.getString('mainTaskName');
    String? date = prefs.getString('dueDate');
    String? description = prefs.getString('description');

    // Return the values as a Map
    return {
      'mainTaskName': name ?? '',
      'dueDate': date ?? '',
      'description': description ?? '',
    };
  }


  @override
  void initState() {
    super.initState();
    for (int i = 0; i < titles.length; i++) {
      controllers.add(TextEditingController());
      inputValues.add('');
      controllers[i].addListener(() {
        setState(() {
          inputValues[i] = controllers[i].text;
        });
      });
    }
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:
          false, // Prevent Scaffold from resizing when the keyboard appears
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
                  Scaffold.of(context)
                      .openDrawer(); // Open the drawer on icon press
                },
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            //The Expanded widget is used in Flutter to distribute available space within a Column, Row, or Flex widget.
            Expanded(
              child: ListView.builder(
                itemCount: titles.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          titles[index],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Color.fromARGB(255, 195, 21, 8),
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: TextField(
                            controller: controllers[index],
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: const EdgeInsets.all(10.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () async {
                  Map<String, String> inputs =
                      await getInputsfromSharedPreferences();
                  final Logger logger = Logger();
                  logger.d('Saved inputs: $inputs');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ThirdPage()),
                  );
                },
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 184, 9, 9)),
                ),
                child: const Text("Add Task"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

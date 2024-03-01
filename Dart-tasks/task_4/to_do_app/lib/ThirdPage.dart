import 'package:flutter/material.dart';
import 'SecondPage.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});
  @override
  Widget build(BuildContext context) {
    List tiltes = ["Title", "Description", "Dead Line"];

    String extractTaskName(String inputs) {
      List<String> inputList = inputs.split(',');
      String taskName = inputList.isNotEmpty ? inputList[0] : '';
      return taskName;
    }

    String extractDueDate(String inputs) {
      List<String> inputList = inputs.split(',');
      String dueDate = inputList.length > 1 ? inputList[1] : '';
      return dueDate;
    }

    String extractDescription(String inputs) {
      List<String> inputList = inputs.split(',');
      String description = inputList.length > 2 ? inputList[2] : '';
      return description;
    }

    return Scaffold(
      resizeToAvoidBottomInset: false, // Prevent Scaffold from resizing when the keyboard appears
      appBar: AppBar(
        title: const Text("Todo List"),
        actions: [
          Builder(
            builder: (BuildContext context) {
              // Use Builder widget to create a new context
              return IconButton(
                icon: const Icon(
                    Icons.more_vert,
                    color: Colors.black
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer(); // Open the drawer on icon press
                },
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'images/stickman.jpg',
              width: 300,
              height: 300,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: tiltes.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              tiltes[index],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                                color: Color.fromARGB(255, 195, 21, 8),
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            SizedBox(
                              height: 40,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: const Text('here', style: TextStyle(fontSize: 25),),
                              ),
                            )
                          ],
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}

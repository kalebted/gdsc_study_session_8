// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
            ),
          ],
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                DecoratedBox(                    
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 160, 160, 160),
                    ),
                    child: SizedBox(
                        width: 500,
                        height: 500,
                        child: Image.asset('images/trevornoah.jpg', fit: BoxFit.cover),
                    ),
                ),
                DecoratedBox(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 183, 183, 183),
                    ),
                    child: SizedBox(
                        width: 500,
                        height: 100,
                      child: Column(
                          children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Title: Born A Crime"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Author: Trevor Noah"),
                              )
                          ],
                      ),
                    ),
                ),
            ],
        ),
    );
  }
}
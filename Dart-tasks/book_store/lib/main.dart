// ignore_for_file: prefer_const_constructors

import 'package:book_store/book_store.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
        backgroundColor: Colors.amber[200],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset('images/Animation - 1709308353841.json'),
              SizedBox(height: 50,),
              Builder(
                builder: (context) {
                  return ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BookStore()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 110, 190, 255)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
                      elevation: MaterialStatePropertyAll(10),
                    ),
                    child: const Text('Welcome to our bookstore', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 255, 255, 255)),),
                  );
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}

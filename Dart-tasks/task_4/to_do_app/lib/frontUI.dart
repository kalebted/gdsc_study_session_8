// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:lottie/lottie.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navigator(
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(
            builder: (BuildContext context) {
              return Scaffold(
                body: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // Image.asset('images/stickman.jpg', fit: BoxFit.cover),
                    Lottie.asset('images/Get_Started_Todo.json'),
                    const SizedBox(
                      height: 200,
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[                            
                          ElevatedButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                        secondaryAnimation) =>
                                        HomePage(),
                                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                            var begin = Offset(1.0, -1.0);
                                            var end = Offset.zero;
                                            var curve = Curves.ease;

                                            var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

                                            return SlideTransition(
                                                position: animation.drive(tween),
                                                child: child,
                                            );
                                  }, // transitionsBuilder
                                ),
                              ); // Navigator
                            }, // onPressed
                            icon: const Icon(Icons.arrow_forward,
                                color: Colors.white),
                            label: const Text("Get Started",
                                style: TextStyle(color: Colors.white)),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 240, 68, 15)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
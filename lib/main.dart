import 'package:flutter/material.dart';
import 'package:hackathon/Pages/Login.dart';
import 'package:hackathon/Pages/constants.dart';
import 'package:hackathon/Pages/temp.dart';
import 'package:hackathon/provider/model.dart';
import 'package:provider/provider.dart';
import 'Pages/Homepage.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => TodoModel(), // Provide an instance of your model
      child: MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    // theme: ThemeData(primarySwatch: Color.fromARGB(255, 158, 158, 158)),
    routes: {
      '/': (BuildContext context) => const HomePage(),
      '/login': (BuildContext context) => const LoginScreen(),
      // '/temp': (BuildContext context) => const MyHomePage(title: 'hi',),
    },
  )),
    );
}


// ChangeNotifierProvider(
//       create: (context) => CounterModel(), // Provide an instance of your model
//       child: MaterialApp(
//     debugShowCheckedModeBanner: false,
//     initialRoute: '/',
//     theme: ThemeData(primarySwatch: Colors.grey),
//     routes: {
//       '/': (BuildContext context) => const HomePage(),
//       '/login': (BuildContext context) => const LoginScreen(),
//       // '/temp': (BuildContext context) => const MyHomePage(title: 'hi',),
//     },
//   )),
//     ),
//   );
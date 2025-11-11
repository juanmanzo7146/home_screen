import 'package:flutter/material.dart';
import 'package:home_screen/homePage.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      debugShowCheckedModeBanner: false,
      title: 'Actividad -- Home Screen',
      
      home: HomePage(),
    );

  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Actividad -- Home Screen',
      home: Scaffold(
        appBar: AppBar(
          title: Padding(padding: const EdgeInsets.only(top: 30.0),
          child: Text('Bienvenidos al Catalogo de Peliculas'),
          
          ),
          centerTitle: true,
        ),
        body: Column(
        children: [
           
           Image.asset('cinema.jpg',
           width: 700,
           
           ), 
    
           Icon(
             Icons.movie, 
             size: 150.0,
             color: Colors.black,
           ),
         ],
        )
      )
    );

  }
}
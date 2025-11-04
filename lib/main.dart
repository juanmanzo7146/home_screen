import 'package:flutter/material.dart';

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
      home: Scaffold(
        
        appBar: AppBar(
          
          title: Padding(padding: const EdgeInsets.only(top: 30.0),
          child: Text('Bienvenidos al Catalogo de Peliculas'),
          
          ),
          centerTitle: true,
          
        ),
        body:  Column(
          
        children: [
           DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('cinema.jpg'), fit: BoxFit.cover),
          ),),
          
           Image.asset('cinema.jpg',
           width: 700,
           alignment: AlignmentGeometry.bottomRight,
           ), 
            Text('Hellouuuu World', style: TextStyle(
              color: Colors.blueAccent, 
              fontSize: 50, 
              fontWeight: FontWeight.bold
              ),
              ),
           Icon(
             Icons.movie, 
             size: 150.0,
             color: Colors.black,
             
           ),
         ],
        ),
      )
    );

  }
}
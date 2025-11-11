import 'package:flutter/material.dart';

class DetallesPage extends StatelessWidget {
  const DetallesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pagina Detalles"),
      backgroundColor: Colors.deepOrangeAccent,),
      body: Center(
        child: ElevatedButton(
          onPressed: () => regresarPagina(context),
          child: const Text("Volver"), 
          ),
      ),
    );
  }

  regresarPagina(context){
    Navigator.pop(context);
  }
}
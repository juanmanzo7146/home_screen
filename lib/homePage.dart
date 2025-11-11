import 'package:flutter/material.dart';
import 'package:home_screen/detallesPag.dart';
import 'package:home_screen/userService.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<User>> futureUsers;

  @override
  void initState() {
    super.initState();
    futureUsers = UserService().getUser();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pagina de Pokemons")),
      body: Center(
        child: FutureBuilder<List<User>> (
          future: futureUsers,
          builder: ((context, snapshot) {
            if (snapshot.hasData) {
              return const Text('I has data');
            }else if(snapshot.hasError){
              return Text('Error: ${snapshot.error}');
            }

            return const CircularProgressIndicator();
          }),
          ),
      ));
  }

  abrirPagina(context){
    Navigator.push(context, MaterialPageRoute(builder: (context) => DetallesPage()));
  }
}


/* ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index){
          final item = items[index];
          return ListTile(
            title: Text('Item $item'),
            subtitle: const Text('Mi subtitulo'),
            onTap: () => abrirPagina(context),
            trailing: const Icon(Icons.chevron_right_outlined),
          );
      })
      );
    
  } */
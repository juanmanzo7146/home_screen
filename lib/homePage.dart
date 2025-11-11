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
          builder: ((context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.separated(
                itemBuilder: (context, index) { 
                User user = snapshot.data?[index];
                return ListTile(
                  title: Text(user.email),
                  subtitle: Text(user.name.first),
                  trailing: const Icon(Icons.chevron_right_outlined),
                  onTap: (() => {abrirPagina(context, user)}),
                  );
              },
               separatorBuilder: (context, index) {
                return const Divider(color: Colors.red);
               },
                itemCount: snapshot.data!.length);
            }else if(snapshot.hasError){
              return Text('Error: ${snapshot.error}');
            }

            return const CircularProgressIndicator();
          }),
          ),
      ));
  }

  abrirPagina(context, User user){
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
import 'package:first_crud/presentacion/screen/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("lista de Usuarios"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text("Nombre"),
            subtitle: Text("correo@gmail.com"),
            trailing: Icon(Icons.arrow_back_ios_rounded),
            onTap: () =>
                Navigator.pushNamed(context, DetailUserScreen.routeName),
          );
        },
        separatorBuilder: (context, index) => const Divider(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, NewUserScreen.routeName);
        },
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.person_add),
      ),
    );
  }
}

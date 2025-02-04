import 'package:first_crud/presentacion/screen/screens.dart';
import 'package:first_crud/services/http.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HttpService httpService = HttpService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("lista de Usuarios"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: FutureBuilder(
        future: httpService.getAllUsers(),
        builder: (context, snapshot) {
          return snapshot.hasData
              ? ListView.separated(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    final user = snapshot.data![index];
                    return ListTile(
                      title: Text(user.name!),
                      subtitle: Text(user.email!),
                      trailing: Icon(Icons.arrow_back_ios_rounded),
                      onTap: () => Navigator.pushNamed(
                          context, DetailUserScreen.routeName),
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(),
                )
              : Center(
                  child: CircularProgressIndicator(
                      color: Theme.of(context).primaryColor),
                );
        },
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

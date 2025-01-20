import 'package:first_crud/presentacion/screen/detail_user/widgets/info.dart';
import 'package:first_crud/presentacion/screen/detail_user/widgets/list_post.dart';
import 'package:flutter/material.dart';

class DetailUserScreen extends StatelessWidget {
  static String routeName = 'detail_user';
  const DetailUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detalle de Usuario",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete_outline,
                color: Colors.white,
              ))
        ],
      ),
      body: const Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                InfoWidget(),
                SizedBox(height: 20.0),
                ListaPost(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}

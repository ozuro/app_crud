import 'package:first_crud/presentacion/screen/detail_user/widgets/info.dart';
import 'package:first_crud/presentacion/screen/detail_user/widgets/list_post.dart';
import 'package:first_crud/presentacion/screen/screens.dart';
import 'package:flutter/material.dart';

class DetailUserScreen extends StatelessWidget {
  static String routeName = 'detail_user';
  const DetailUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Detalle de Usuario",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Eliminar usuario"),
                        content: const Text(
                            "¿Estas seguro de eliminar este usuario?"),
                        actions: [
                          TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text(
                                "Aceptar",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor),
                              )),
                          TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text(
                                "Cancelar",
                                style: TextStyle(color: Colors.black12),
                              )),
                        ],
                      );
                    });
              },
              icon: const Icon(
                Icons.delete_outline,
                color: Colors.white,
              ))
        ],
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
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
        onPressed: () => Navigator.pushNamed(context, NewPostScreen.routeName),
        child: Icon(Icons.note_add_rounded),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}

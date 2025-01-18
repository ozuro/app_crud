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
        body: Column(
          children: [
            Text(
              "Informacion del usuario",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Card(
              elevation: 20,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.person),
                    trailing: Text("Nombre"),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

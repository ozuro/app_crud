import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Informacion del usuario",
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        Card(
          elevation: 20,
          child: Column(
            children: [
              _item("Nombre", Icons.person),
              _item("correo@gmail.com", Icons.email),
              _item("masculino", Icons.supervised_user_circle_rounded),
              _item("activo", Icons.circle)
            ],
          ),
        ),
      ],
    );
  }

  Widget _item(String texto, IconData icono) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icono, color: Colors.grey, size: 40.0),
          trailing: Text(texto),
        ),
        const Divider()
      ],
    );
  }
}

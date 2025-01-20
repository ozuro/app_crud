import 'package:first_crud/models/models.dart';
import 'package:first_crud/presentacion/widgets/widgets.dart';

import 'package:flutter/material.dart';

class NewUserScreen extends StatefulWidget {
  static String routeName = 'newuser';
  const NewUserScreen({super.key});

  @override
  State<NewUserScreen> createState() => _NewUserScreenState();
}

class _NewUserScreenState extends State<NewUserScreen> {
  final List<ItemDropdown> listSex = [
    ItemDropdown(label: "Femenino", value: 'female'),
    ItemDropdown(label: "Maculino", value: 'male'),
  ];

  final List<ItemDropdown> listEstado = [
    ItemDropdown(label: "Activo", value: 'activo'),
    ItemDropdown(label: "Desactivo", value: 'desactivo'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Nuevo Usuario",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFieldWidget(
                label: "Nombre", placeholder: "Nombre", icon: Icons.person),
            TextFieldWidget(
              label: "correo",
              placeholder: "correo ",
              icon: Icons.mail,
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownWidget(label: "Genero", list: listSex),
                DropdownWidget(label: "Estado", list: listEstado)
              ],
            ),
            const Spacer(),
            buttom(),
          ],
        ),
      ),
    );
  }
}

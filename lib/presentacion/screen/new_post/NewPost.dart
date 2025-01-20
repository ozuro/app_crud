import 'package:first_crud/presentacion/screen/screens.dart';
import 'package:flutter/material.dart';

class NewPostScreen extends StatelessWidget {
  static String routeName = 'new_post';
  const NewPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Crear Nuevo Post"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFieldWidget(
                label: 'Titulo', placeholder: 'titulo', icon: Icons.title),
            SizedBox(
              height: 8.0,
            ),
            TextFieldWidget(
                label: 'Titulo', placeholder: 'titulo', icon: Icons.title),
          ],
        ),
      ),
    );
  }
}

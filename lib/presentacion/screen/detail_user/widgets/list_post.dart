import 'package:flutter/material.dart';

class ListaPost extends StatelessWidget {
  const ListaPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Lista de post"),
        Card(
          elevation: 20.0,
          child: SizedBox(
            height: 250.0,
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Post $index"),
                  subtitle: Text("Descripcion del post $index"),
                  leading: Icon(Icons.post_add),
                  trailing: Icon(Icons.arrow_forward_ios),
                );
              },
              separatorBuilder: (context, index) => const Divider(),
              itemCount: 2,
            ),
          ),
        ),
      ],
    );
  }
}

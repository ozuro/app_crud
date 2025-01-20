import 'package:flutter/material.dart';

class DetailPostScreen extends StatelessWidget {
  static String routeName = 'detail_post';
  const DetailPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalle del Post"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Titulo",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Card(
              elevation: 20.0,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text("Titulo del post"),
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "Contenido",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Card(
              elevation: 20.0,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text("Contenido del post"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

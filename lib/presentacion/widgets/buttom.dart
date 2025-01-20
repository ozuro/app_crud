import 'package:flutter/material.dart';

class buttom extends StatelessWidget {
  const buttom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(5.0)),
      child: Center(
          child: Text(
        "Guardar",
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}

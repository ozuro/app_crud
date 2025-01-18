import 'package:first_crud/presentacion/screen/screens.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'flutter demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: HomeScreen.routeName,
        routes: {
          HomeScreen.routeName: (_) => const HomeScreen(),
          NewUserScreen.routeName: (_) => const NewUserScreen(),
        });
  }
}

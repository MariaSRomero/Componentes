import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  const HomePageTemp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App de componentes'),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text('No sé qué poner xd'),
            subtitle: Text('123213'),
          ),
          Divider(
            thickness: 3.0,
            color: Color.fromARGB(255, 149, 2, 194),
          ),
          ListTile(
            title: Text('Levi Ackerman'),
            subtitle: Text('Obsesionado con la limpieza'),
          ),
        ],
      ),
    );
  }
}

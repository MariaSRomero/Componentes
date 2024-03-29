import 'package:flutter/material.dart';

class AlertsScreens extends StatelessWidget {
  const AlertsScreens({super.key});

  void _mostrarAlert(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.black26,
      builder:(context){
        return  AlertDialog(
          backgroundColor: const Color.fromARGB(248, 211, 226, 241),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          title: const Text('Título de la alerta'),
          content: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Text('Contenido de la alerta'),
              FlutterLogo(
                size: 50.0,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Aceptar',)),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancelar')),
          ],
        );
      });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(
      title: const Text('Alert Screen'),
    ),
      body: Center(
      
        child: ElevatedButton(
        onPressed: () => _mostrarAlert(context),
        child: const Text('Mostrar alerta'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:() {
          Navigator.pop(context);
        },
        child: const Icon(Icons.keyboard_return_outlined),
        ),
    );
  }
}
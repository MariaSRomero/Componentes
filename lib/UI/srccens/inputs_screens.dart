import 'dart:math';

import 'package:flutter/material.dart';

class InputsScreens extends StatefulWidget {
  const InputsScreens({super.key});

  @override
  State<InputsScreens> createState() => _InputsScreensState();
}

class _InputsScreensState extends State<InputsScreens> {
  String _userName = '';
  @override
  Widget build(BuildContext context) {
        return  Scaffold(
          appBar: AppBar(
          title: const Text('Entradas de datos por el usuario'),
          ),
      body: ListView(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 20.0),
        children: [
          _crearEntradaNombre(),
          _crearEntradaPassword()
        ],
      ),
    );
  }

  Widget _crearEntradaNombre(){
    return TextField(
      autofocus: true,
      textAlign: TextAlign.center,
      textCapitalization: TextCapitalization.sentences,
      style: const TextStyle(
        color: Color.fromARGB(255, 23, 98, 238),
        fontWeight: FontWeight.bold,
      ) ,
      cursorColor: const Color.fromARGB(255, 22, 72, 129),
      cursorRadius: const Radius.circular(16.0),
      cursorWidth: 3.0,
      //maxLength: 4,
      maxLines: null,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius:BorderRadius.circular(20.0)),
          hintText: "Escriba su nombre",
          labelText: "Nombre:",
          //helperText: "Nombre",
          //Al ocupar el prefixIcon, el iconColor queda sin función
          prefixIcon: const Icon(Icons.person_rounded),
          //iconColor solo aplica para para la propiedad icon
          //iconColor: const Color.fromARGB(255, 40, 183, 255),
          // prefix: const CircularProgressIndicator(),
          ),
      onChanged: (valor){
        _userName = valor;
        print(_userName);
      },
    );
  }

  Widget _crearEntradaPassword(){
    return TextField(
      autofocus: true,
      textAlign: TextAlign.center,
      textCapitalization: TextCapitalization.sentences,
      style: const TextStyle(
        color: Color.fromARGB(255, 23, 98, 238),
        fontWeight: FontWeight.bold,
      ) ,
      cursorColor: const Color.fromARGB(255, 22, 72, 129),
      cursorRadius: const Radius.circular(16.0),
      cursorWidth: 3.0,
      maxLength: 8,
      obscureText: true,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius:BorderRadius.circular(20.0)),
          hintText: "Escriba su contraseña",
          labelText: "Contraseña:",
          suffixIcon: const Icon(Icons.key),
          //iconColor solo aplica para para la propiedad icon
          //iconColor: const Color.fromARGB(255, 40, 183, 255),
          // prefix: const CircularProgressIndicator(),
          ),
      onChanged: (valor){
        _userName = valor;
        print(_userName);
      },
    );
  }

}
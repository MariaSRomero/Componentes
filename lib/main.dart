import 'package:componentes/UI/srccens/alerts_screens.dart';
import 'package:componentes/UI/srccens/inputs_screens.dart';
import 'package:componentes/home_page_temp.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Componentes',
      debugShowCheckedModeBanner: false,
      //home: HomePageTemp(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/' : (BuildContext context) => const HomePageTemp(),
        'alert':(BuildContext context) => const AlertsScreens(),
        'inputs' : (BuildContext context) => const InputsScreens(),
      },
      onGenerateRoute: (RouteSettings settings) {
        print('Ruta llamada: ${settings.name}');
        return MaterialPageRoute(
          builder: (BuildContext context) => const AlertsScreens());
      });
  }
}
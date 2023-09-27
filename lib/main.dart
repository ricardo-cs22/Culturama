import 'package:culturama/Page/EventosPage.dart';
import 'package:culturama/Page/GuiasTuristicosPage.dart';
import 'package:culturama/Page/HomePage.dart';
import 'package:culturama/Page/HoteisPage.dart';

import 'package:culturama/Page/MelhoresDestinosPage.dart';
import 'package:culturama/Page/PrecosPage.dart';
import 'package:culturama/Page/RestaurantesPage.dart';
import 'package:culturama/Page/TrilhasPage.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       primaryColor: Color.fromARGB(255, 0, 0, 0),  
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/melhores_destinos': (context) => MelhoresDestinosPage(),
        '/guias_turisticos': (context) => GuiasTuristicosPage(),
        '/eventos': (context) => EventosPage(),
        '/precos': (context) => PrecosPage(),
        '/trilhas': (context) => TrilhasPage(),
        '/hoteis': (context) => HoteisPage(),
        '/restaurantes': (context) => RestaurantesPage(),
      },
    );
  }
}
















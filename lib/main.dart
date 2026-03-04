import 'package:flutter/material.dart';
import 'paginas/inicio.dart';
import 'paginas/bienvenida.dart';
import 'paginas/servicios.dart';
import 'paginas/infantiles.dart';
import 'paginas/musicales.dart';
import 'paginas/comida.dart';

void main() {
  runApp(const EventosPoplasApp());
}

class EventosPoplasApp extends StatelessWidget {
  const EventosPoplasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eventos Poplas',
      // La aplicación ahora inicia en la página de Inicio
      initialRoute: '/',
      routes: {
        '/': (context) => const InicioPage(),
        '/bienvenida': (context) => const BienvenidaPage(),
        '/servicios': (context) => const ServiciosPage(),
        '/infantiles': (context) => const InfantilesPage(),
        '/musicales': (context) => const MusicalesPage(),
        '/comida': (context) => const ComidaPage(),
      },
    );
  }
}
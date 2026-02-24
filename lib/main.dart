import 'package:flutter/material.dart';
import 'paginas/servicios.dart';
import 'paginas/infantiles.dart';
import 'paginas/musicales.dart';

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
      // Definimos la página inicial
      initialRoute: '/',
      // Mapa de rutas para navegar por nombre
      routes: {
        '/': (context) => const ServiciosPage(),
        '/infantiles': (context) => const InfantilesPage(),
        '/musicales': (context) => const MusicalesPage(),
      },
    );
  }
}

// --- WIDGET REUTILIZABLE PARA EL ENCABEZADO ---
// Lo pongo aquí para que todas las páginas puedan usarlo importando main.dart
// o podrías crear un archivo llamado 'widgets.dart' para esto.
class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.deepPurple,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: SafeArea(
            bottom: false,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Spacer(),
                Column(
                  children: const [
                    Text("EVENTOS", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 4)),
                    Text("POPLAS", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w300)),
                  ],
                ),
                const Expanded(
                  child: Text("Paola Ortega 6J", textAlign: TextAlign.end, style: TextStyle(color: Colors.white70, fontSize: 10)),
                ),
              ],
            ),
          ),
        ),
        Container(
          color: Colors.pinkAccent.shade100,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
          child: Row(
            children: const [
              Icon(Icons.menu, color: Colors.black, size: 26),
              Spacer(),
              Icon(Icons.shopping_cart, color: Colors.black, size: 26),
              SizedBox(width: 20),
              Icon(Icons.person, color: Colors.black, size: 26),
            ],
          ),
        ),
      ],
    );
  }
}
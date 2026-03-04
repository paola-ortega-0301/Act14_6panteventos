import 'package:flutter/material.dart';
import '../widgets_compartidos.dart'; // Importamos el encabezado común

class ComidaPage extends StatelessWidget {
  const ComidaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomHeader(), // Encabezado con barra rosa e iconos
          _buildNav(context, "Servicios de Comida"),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(15),
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              children: [
                _card("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpPC58JhVpBOVNrLOTyC0xz7o98lPYxi5smw&s", "Banquete Gourmet, Platillo, \$280"),
                _card("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhLJ55pdrpeZNHGkMdCOtOKcpzML0nQuqQBw&s", "Buffet Mexicano, Persona, \$150"),
                _card("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJOkVdxhXkttsnLghpIQbnvXtIo670MeOgyA&s", "Mesa de Dulces, 50 pers, \$2000"),
                _card("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgzp1c2anMHWb1xhCVfgoBsEbBwS1AwNntyg&s", "Taquiza Completa, Persona, \$130"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Barra de navegación interna con la flecha morada
  Widget _buildNav(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.purple, 
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Icon(Icons.arrow_back, color: Colors.black),
            ),
          ),
          Expanded(
            child: Text(
              title, 
              textAlign: TextAlign.center, 
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(width: 48), // Espacio para equilibrar el centrado
        ],
      ),
    );
  }

  // Diseño de cada tarjeta de comida
  Widget _card(String img, String info) {
    return Column(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10), 
            child: Image.network(img, fit: BoxFit.cover),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          info, 
          textAlign: TextAlign.center, 
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
        ),
      ],
    );
  }
}
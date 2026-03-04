import 'package:flutter/material.dart';
import '../widgets_compartidos.dart';

class ServiciosPage extends StatelessWidget {
  const ServiciosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomHeader(), // Este ya trae los iconos si no le pasas nada
          
          // --- BOTÓN REGRESAR (Solo uno y funcional) ---
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: () => Navigator.pop(context), // Regresa a Bienvenida
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.purple, 
                    borderRadius: BorderRadius.circular(4)
                  ),
                  child: const Icon(Icons.arrow_back, color: Colors.black),
                ),
              ),
            ),
          ),

          const Text(
            "Echa un vistazo a nuestros servicios", 
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
          ),
          
          const SizedBox(height: 40),

          // --- SECCIÓN DE SERVICIOS (Los 3 círculos) ---
          Column(
            children: [
              // Fila con Infantiles y Musicales
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildCircleCategory(context, "infantiles", Icons.party_mode, "/infantiles"),
                  const SizedBox(width: 40),
                  _buildCircleCategory(context, "musicales", Icons.music_note, "/musicales"),
                ],
              ),
              const SizedBox(height: 30),
              // Fila con Comida (centrada o alineada como prefieras)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   _buildCircleCategory(context, "comida", Icons.restaurant, "/comida"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Widget para crear los círculos rosas
  Widget _buildCircleCategory(BuildContext context, String label, IconData icon, String route) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, route),
      child: Container(
        width: 100,
        height: 100,
        decoration: const BoxDecoration(
          color: Colors.pinkAccent, 
          shape: BoxShape.circle
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label, 
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12)
            ),
            const SizedBox(height: 5),
            Icon(icon, color: Colors.white, size: 30),
          ],
        ),
      ),
    );
  }
}
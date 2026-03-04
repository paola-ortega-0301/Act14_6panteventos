import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  final bool mostrarIconos;

  const CustomHeader({super.key, this.mostrarIconos = true});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Encabezado Morado (Se mantiene igual)
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
        
        // Barra Rosa Corregida
        Container(
          color: Colors.pinkAccent.shade100,
          width: double.infinity, // Ocupa todo el ancho
          height: 50,             // ALTURA FIJA para que no desaparezca en Inicio
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: mostrarIconos 
            ? Row(
                children: [
                  Builder(
                    builder: (context) => IconButton(
                      icon: const Icon(Icons.menu, color: Colors.black, size: 26),
                      onPressed: () => Scaffold.of(context).openDrawer(),
                    ),
                  ),
                  const Spacer(),
                  const Icon(Icons.shopping_cart, color: Colors.black, size: 26),
                  const SizedBox(width: 20),
                  const Icon(Icons.person, color: Colors.black, size: 26),
                ],
              )
            : const SizedBox(), // Ahora el SizedBox no afecta porque el Container manda la altura
        ),
      ],
    );
  }
}
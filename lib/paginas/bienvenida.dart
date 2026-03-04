import 'package:flutter/material.dart';
import '../widgets_compartidos.dart';

class BienvenidaPage extends StatelessWidget {
  const BienvenidaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.purple),
              child: Center(child: Text("MENU", style: TextStyle(color: Colors.white, fontSize: 24))),
            ),
            ListTile(
              leading: const Icon(Icons.settings_suggest, color: Colors.purple),
              title: const Text("servicios"),
              onTap: () {
                Navigator.pop(context); // Cierra drawer
                Navigator.pushNamed(context, '/servicios');
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const CustomHeader(),
          // BOTÓN REGRESAR
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: () => Navigator.pop(context), // ACCIÓN DE REGRESAR
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(color: Colors.purple, borderRadius: BorderRadius.circular(4)),
                  child: const Icon(Icons.arrow_back, color: Colors.black),
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Text("Bienvenido a Eventos Poplas", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  const Text("algunos de nuestros eventos", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),
                  _buildImg("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyrmfu0ErltrJZa8bmZbygq5z54v8T146cyQ&s"),
                  const SizedBox(height: 20),
                  _buildImg("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4SVoEHFTQ599mTnAIKAdY6sNLp0Xq8EEtNQ&s"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImg(String url) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.network(url, width: double.infinity, height: 180, fit: BoxFit.cover),
    );
  }
}
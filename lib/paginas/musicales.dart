import 'package:flutter/material.dart';
import '../widgets_compartidos.dart';

class MusicalesPage extends StatelessWidget {
  const MusicalesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomHeader(),
          _buildNav(context, "Servicios Infantiles"),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(15),
              children: [
                _card("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLmKCAIw2PgRDUJW_9IMDgH9GmAKPVANrx_Q&s", "Banda MS, 2hrs, \$1200"),
                _card("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEJ08GNhZjE6f-zHpGdj6EdnPAsijg9W64HQ&s", "Rondalla Azumar, 1hr, \$1500"),
                _card("https://i.ytimg.com/vi/ZUM-Wvx8EVU/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCoiS5Op6SSb-bH2fr3pNsYEu82YQ", "Aimep3 DJ, \$800"),
                _card("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYB-rFfRRrVH9C63BV4c4eO6UzAGKWNdpmlA&s", "Trio Jelo, \$950"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNav(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(color: Colors.purple, borderRadius: BorderRadius.circular(4)),
              child: const Icon(Icons.arrow_back, color: Colors.black),
            ),
          ),
          Expanded(child: Text(title, textAlign: TextAlign.center, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
          const SizedBox(width: 48),
        ],
      ),
    );
  }

  Widget _card(String img, String info) {
    return Column(
      children: [
        Expanded(child: ClipRRect(borderRadius: BorderRadius.circular(10), child: Image.network(img, fit: BoxFit.cover))),
        Text(info, textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 11)),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import '../main.dart';

class MusicalesPage extends StatelessWidget {
  const MusicalesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomHeader(),
          _buildTopNav(context, "Servicios musicales"),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(15),
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              children: [
                _item("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkWgEOZuCJZYcG5pC5Q5jS30qM73HAwBpCMA&s", "Mariachi Real, 1hr, \$3500"),
                _item("https://i.ytimg.com/vi/ZUM-Wvx8EVU/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCoiS5Op6SSb-bH2fr3pNsYEu82YQ", "DJ Pro, 5hrs, \$2500"),
                _item("https://images.saymedia-content.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:eco%2Cw_1200/MTgzNzMwMTY4NDMzNDg1MTE5/best-rock-trios-of-all-time.jpg", "Trío Bohemio, 2hrs, \$1800"),
                _item("https://s1.ticketm.net/dam/a/f4d/e2c5324d-65d4-43e5-8786-cb76c47f9f4d_1032671_TABLET_LANDSCAPE_LARGE_16_9.jpg", "Banda Sinaloense, 1hr, \$4000"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopNav(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(color: Colors.purple, borderRadius: BorderRadius.circular(4)),
              child: const Icon(Icons.arrow_back, color: Colors.black),
            ),
          ),
          Expanded(child: Text(title, textAlign: TextAlign.center, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
          const SizedBox(width: 32),
        ],
      ),
    );
  }

  Widget _item(String img, String txt) {
    return Column(
      children: [
        Expanded(child: ClipRRect(borderRadius: BorderRadius.circular(10), child: Image.network(img, fit: BoxFit.cover))),
        const SizedBox(height: 8),
        Text(txt, textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 11)),
      ],
    );
  }
}
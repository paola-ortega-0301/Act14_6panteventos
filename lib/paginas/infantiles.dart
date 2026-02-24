import 'package:flutter/material.dart';
import '../main.dart';

class InfantilesPage extends StatelessWidget {
  const InfantilesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomHeader(),
          _buildTopNav(context, "Servicios Infantiles"),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(15),
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              children: [
                _item("https://yt3.googleusercontent.com/ytc/AIdro_lJPs1CN4VRODBz-IhFG-D70vgidhrK3aeijnhrFAk4-nc=s900-c-k-c0x00ffffff-no-rj", "Payaso Tilin, 2hrs, \$1200"),
                _item("https://disfrazinc.mx/cdn/shop/files/MAGO_1024x1024.png?v=1696464997", "Show Magia, 1hr, \$1500"),
                _item("https://m.media-amazon.com/images/I/71oNF6AmaRL._AC_UF894,1000_QL80_.jpg", "Inflable Castillo, Todo el día, \$800"),
                _item("https://macarenaparty.com/cdn/shop/files/IMG_0171.heic?v=1747409181&width=1445", "Pinta caritas, 3hrs, \$950"),
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
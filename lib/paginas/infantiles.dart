import 'package:flutter/material.dart';
import '../widgets_compartidos.dart';

class InfantilesPage extends StatelessWidget {
  const InfantilesPage({super.key});

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
                _card("https://yt3.googleusercontent.com/ytc/AIdro_lJPs1CN4VRODBz-IhFG-D70vgidhrK3aeijnhrFAk4-nc=s900-c-k-c0x00ffffff-no-rj", "Payaso Tilin, 2hrs, \$1200"),
                _card("https://disfrazinc.mx/cdn/shop/files/MAGO_1024x1024.png?v=1696464997", "Show Magia, 1hr, \$1500"),
                _card("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKlx79llI9u8EMbd4kclztdJNSwT8gnJ4-8w&s", "Inflable, Día, \$800"),
                _card("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtjsP3kjwXQIC_jo-6u_mxAGan2PP0aiyHFg&s", "Pinta caritas, \$950"),
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
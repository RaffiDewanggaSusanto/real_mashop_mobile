import 'package:flutter/material.dart';
import 'package:real_mashop/screens/menu.dart';
import 'package:real_mashop/screens/productslist_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF0050a0),
            ),
            child: Column(
              children: [
                Text(
                  'Real Mashop',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFf0b414),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text("Seluruh produk olahraga terbaik di sini!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFf0b414),
                    fontSize: 15.0,
                    fontWeight: FontWeight.normal,
                  ),

                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined, color: Color(0xFF0050a0)),
            title: const Text('Halaman Utama', style: TextStyle(color: Color(0xFF0050a0))),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  )
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.post_add, color: Color(0xFF0050a0)),
            title: const Text('Tambah Produk', style: TextStyle(color: Color(0xFF0050a0))),
            // Bagian redirection ke ProductsFormPage
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductsFormPage(),
                  )
              );
            },
          ),
        ],
      ),
    );
  }
}
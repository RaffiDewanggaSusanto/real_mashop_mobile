import 'package:flutter/material.dart';
import 'package:real_mashop/screens/menu.dart';
import 'package:real_mashop/screens/productslist_form.dart';
import 'package:real_mashop/screens/products_entry_list.dart';
import 'package:real_mashop/screens/login.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF0050a0), Color(0xFFF0B414)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.sports_soccer,
                  size: 52,
                  color: Colors.white,
                ),
                SizedBox(height: 8),
                Text(
                  'Real Mashop',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.1,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  "Seluruh produk olahraga terbaik di sini!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  leading: const Icon(Icons.home_outlined,
                      color: Color(0xFF0050a0)),
                  title: const Text(
                    'Halaman Utama',
                    style: TextStyle(color: Color(0xFF0050a0)),
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyHomePage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.post_add,
                      color: Color(0xFF0050a0)),
                  title: const Text(
                    'Tambah Produk',
                    style: TextStyle(color: Color(0xFF0050a0)),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductsFormPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.list_alt_outlined,
                      color: Color(0xFF0050a0)),
                  title: const Text(
                    'Products List',
                    style: TextStyle(color: Color(0xFF0050a0)),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const ProductsEntryListPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: const Text(
              'Logout',
              style: TextStyle(color: Colors.red),
            ),
            onTap: () async {
              final response =
                  await request.logout("http://raffi-dewangga-realmashop.pbp.cs.ui.ac.id/auth/logout/");

              if (!context.mounted) return;

              String message = response["message"];
              if (response['status']) {
                String uname = response["username"];
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("$message See you again, $uname."),
                  ),
                );
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                  (route) => false,
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(message),
                  ),
                );
              }
            },
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
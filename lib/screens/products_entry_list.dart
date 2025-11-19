import 'package:flutter/material.dart';
import 'package:real_mashop/models/products_entry.dart';
import 'package:real_mashop/widgets/left_drawer.dart';
import 'package:real_mashop/screens/products_detail.dart';
import 'package:real_mashop/widgets/products_entry_card.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:real_mashop/screens/products_detail.dart';

class ProductsEntryListPage extends StatefulWidget {
  const ProductsEntryListPage({super.key});

  @override
  State<ProductsEntryListPage> createState() => _ProductsEntryListPageState();
}

class _ProductsEntryListPageState extends State<ProductsEntryListPage> {
  Future<List<ProductsEntry>> fetchProducts(CookieRequest request) async {
    // TODO: Replace the URL with your app's URL and don't forget to add a trailing slash (/)!
    // To connect Android emulator with Django on localhost, use URL http://10.0.2.2/
    // If you using chrome,  use URL http://localhost:8000

    final response = await request.get('http://raffi-dewangga-realmashop.pbp.cs.ui.ac.id/json-by-user/');

    // Decode response to json format
    var data = response;

    // Convert json data to ProductsEntry objects
    List<ProductsEntry> listProducts = [];
    for (var d in data) {
      if (d != null) {
        listProducts.add(ProductsEntry.fromJson(d));
      }
    }
    return listProducts;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products Entry List'),
      ),
      drawer: const LeftDrawer(),
      body: Container(
        color: const Color(0xFFF5F6FA),
        child: FutureBuilder(
          future: fetchProducts(request),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return const Center(child: CircularProgressIndicator());
            } else {
              if (!snapshot.hasData) {
                return const Column(
                  children: [
                    Text(
                      'There are no products in football products yet.',
                      style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                    ),
                    SizedBox(height: 8),
                  ],
                );
              } else {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (_, index) => ProductsEntryCard(
                    products: snapshot.data![index],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductsDetailPage(
                            products: snapshot.data![index],
                          ),
                        ),
                      );
                    },
                  ),
                );
              }
            }
          },
        ),
      ),
    );
  }
}
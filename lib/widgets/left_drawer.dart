import 'package:flutter/material.dart';
import 'package:toko_izaka/screens/menu.dart';
import 'package:toko_izaka/screens/itementry_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Column(
              children: [
                Text(
                  'Toko Izaka',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  "Apa yang diperlukan ada di sini!",
                  textAlign: TextAlign.center, // Align center
                    style: TextStyle(
                      fontSize: 15,           // Ukuran font 15
                      color: Colors.white,     // Warna font putih
                      fontWeight: FontWeight.normal, // Berat font biasa
                    ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.add),
            title: const Text('Tambah Item'),
            // Bagian redirection ke MoodEntryFormPage
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ItemEntryFormPage(),
                ));
            },
          ),
        ],
      ),
    );
  }
}
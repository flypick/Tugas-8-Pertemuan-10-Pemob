import 'package:flutter/material.dart';
import 'package:toko_kita/ui/login_page.dart';
import 'package:toko_kita/ui/produk_page.dart';
// Import halaman login

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toko Kita',
      debugShowCheckedModeBanner: false,
      home: const ProdukPage(), // Ubah home menjadi LoginPage
    );
  }
}
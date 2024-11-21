import 'package:flutter/material.dart';
import 'package:team4_groupproject/item_add_page/item_add_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/item_add_page' : (context) => const ItemAddPage(),
      },
      initialRoute: '/item_add_page',
    );
  }
}

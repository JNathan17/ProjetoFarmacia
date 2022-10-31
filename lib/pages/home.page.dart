import 'package:flutter/material.dart';
import '../utils/constantes.dart';
import 'cadastro.page.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bem-Vindo(a) <Nome do Usuario>",
          style: TextStyle(fontSize: 12),
        ),
      ),
      body: Center(
          child: Column(
        children: const <Widget>[],
      )),
    );
  }
}

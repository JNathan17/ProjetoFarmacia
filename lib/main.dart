import 'package:appfarmacia/pages/cadastro.page.dart';
import 'package:appfarmacia/pages/home.page.dart';
import 'package:appfarmacia/pages/login.page.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Controle De Estoque Farmaceutico',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const LoginPage(title: 'Controle de Estoque Farmacêutico'),
    );
  }
}

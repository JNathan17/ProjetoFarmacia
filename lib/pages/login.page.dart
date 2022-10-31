// ignore_for_file: avoid_print

import 'package:appfarmacia/pages/home.page.dart';
import 'package:flutter/material.dart';

import '../utils/constantes.dart';
import 'cadastro.page.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key? key, required this.title}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APP BAR
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // CORPO DA APLICAÇÃO
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: <Widget>[
              // NOSSA LOGO
              const Padding(
                padding: EdgeInsets.only(top: 50),
                child: FlutterLogo(
                  size: 100,
                ),
              ),
              //
              // CAMPOS DE EMAIL E SENHA
              // email
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
                onChanged: (String textoDigitado) {
                  print(textoDigitado);
                },
              ),

              // senha
              TextFormField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: const InputDecoration(
                  labelText: 'Senha',
                ),
                onChanged: (String textoDigitado) {
                  print(textoDigitado);
                },
              ),
              // BOTÕES DE ENTRAR E CADASTRAR
              // BOTAO ENTRAR
              Container(
                padding: const EdgeInsets.only(top: 30),
                width: 300,
                height: 68,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage(
                                  title: '',
                                )),
                        ModalRoute.withName('/home'));
                  },
                  //style: ElevatedButton.styleFrom(primary: Colors.blue),
                  child: const Text('ENTRAR'),
                ),
              ),

              // DIVISIOR
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
              ),

              // BOTÃO CADASTRAR
              SizedBox(
                width: 300,
                height: 38,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const CadastroPage(
                              title: '',
                            )),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  child: const Text('CADASTRAR'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

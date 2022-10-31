import 'dart:convert';
import 'package:appfarmacia/pages/home.page.dart';
import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({Key? key, required String title}) : super(key: key);

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Text(
            'Voltar',
            style: TextStyle(color: Colors.black),
          ),
        ),
        title: const Text("PAGINA DE CADASTRO"),
      ),
      body: Center(
        //child: Text("BEM VINDO A TELA DE CADASTRO"),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(children: <Widget>[
            // NOSSA LOGO
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: FlutterLogo(
                size: 100,
              ),
            ),

            //CADASTRAR EMAIL
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
              onChanged: (String textoDigitado) {
                print(textoDigitado);
              },
            ),

            //CADASTRAR USUARIO
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Usuario',
              ),
              onChanged: (String textoDigitado) {
                print(textoDigitado);
              },
            ),

            //CADASTRAR IDADE
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Idade',
              ),
              onChanged: (String textoDigitado) {
                print(textoDigitado);
              },
            ),

            //CADASTRAR SENHA
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

            //CONFIRMAR SENHA
            TextFormField(
              obscureText: true,
              obscuringCharacter: '*',
              decoration: const InputDecoration(
                labelText: 'Confirmar Senha',
              ),
              onChanged: (String textoDigitado) {
                print(textoDigitado);
              },
            ),

            //FINALIZAR CADASTRO

            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
            ),
            SizedBox(
              width: 300,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const HomePage(
                            title: '',
                          )),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(primary: Colors.green),
                child: const Text('FINALIZAR CADASTRAR'),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

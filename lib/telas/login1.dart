import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nutri/telas/home.dart';
import 'package:nutri/telas/registro_google.dart';

class LoginDoUsuario extends StatelessWidget {
  LoginDoUsuario({super.key});

  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/png/correndoparque.jpg'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white.withAlpha(190),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: "E-mail",
                    ),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(hintText: "Senha"),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Esqueci minha senha",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                            height: 0.8,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('home');
                    },
                    child: Text("Entrar"),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context,
                          'registro_google'
                      );
                    },
                    child: Text("Entrar com o google"),
                  ),
                  SizedBox(height: 10),
                  TextButton(
                    onPressed: () {

                    },
                    child: Text("Ainda nao tem uma conta? crie uma conta"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent[700],
      body: Container(
        width: double.infinity,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              const Icon(Icons.person, size: 150, color: Colors.black,),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                height: 30,
                alignment: Alignment.center,
                child: const Row(
                  children: [
                    Expanded(flex: 2, child: Text("Informe seu email:")),
                    Expanded(flex: 3, child: Text("Email")),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                height: 30,
                alignment: Alignment.center,
                child: const Row(
                  children: [
                    Expanded(flex: 2, child: Text("Informe sua senha:")),
                    Expanded(flex: 3, child: Text("Senha")),
                  ],
                ),
              ),

              Expanded(child: Container()),

              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                height: 30,
                color: Colors.blueAccent[700],
                alignment: Alignment.center,
                child: const Text("Login"),
              ),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                height: 30,
                child: const Text("Cadastro"),
              ),

              const SizedBox(
                height: 30,
              ),

            ],
          ),
      ),
      );
  }
}
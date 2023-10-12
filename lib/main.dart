import 'package:flutter/material.dart';
import 'telainicial.dart';
import 'cadastro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String errorMessage = "";

  void funcaoLogin(BuildContext context, String email, String password) {
    if (email == "admin@gmail.com" && password == "1234") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => telainicial()),
      );
    } else {
      errorMessage = "Erro";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(3, 187, 246, 2),
        title: Text("Tela de Login"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              onChanged: (user) {},
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: "Email",
                prefixIcon: Icon(Icons.email_rounded),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 25),
            TextField(
              controller: passwordController,
              onChanged: (pass) {},
              decoration: const InputDecoration(
                hintText: "Senha",
                prefixIcon: Icon(Icons.lock_rounded),
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                funcaoLogin(
                    context, emailController.text, passwordController.text);
              },
              child: Text("Entrar"),
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => cadastro()),
                );
                ;
              },
              child: Text("Cadastrar"),
            ),
            SizedBox(height: 25),
            Text(
              errorMessage,
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}

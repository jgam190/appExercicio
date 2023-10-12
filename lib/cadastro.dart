import 'package:flutter/material.dart';
import 'telainicial.dart';

class cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController userController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Criar Conta"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            controller: userController,
            onChanged: (user) {},
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
                hintText: "Nome : ",
                prefixIcon: Icon(Icons.person_2_outlined),
                border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 25,
          ),
          TextField(
            controller: emailController,
            onChanged: (user) {},
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
                hintText: "Email",
                prefixIcon: Icon(Icons.email_rounded),
                border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 25,
          ),
          TextField(
            controller: passwordController,
            onChanged: (pass) {},
            decoration: const InputDecoration(
                hintText: "Senha",
                prefixIcon: Icon(Icons.password_rounded),
                border: OutlineInputBorder()),
            obscureText: true,
          ),
          SizedBox(
            height: 25,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => telainicial()),
                );
              },
              child: Text("Criar")),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}

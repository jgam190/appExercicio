import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  void funcaovoltar(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("perfil tela"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1p11em-J8j0y9nJ3kIpkT4eqWHH3xW_7iAdcUXkXIXPdytu3KHQXEEn3k81E50oK8fEI&usqp=CAU   ',
              width: 100,
              height: 100,
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Nome: XXXXX",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Idade: XX",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Local: XXXXXX",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () {
                  funcaovoltar(context);
                },
                child: Text("Sair"))
          ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'profile.dart';
import 'pesquisa.dart';

class telainicial extends StatelessWidget {
  final List<String> Mensagens = [
    "Teste",
    "Teste2",
    "Teste3",
    "Teste4",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela principal"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person_3_rounded),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profile()),
              );
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: ListView.builder(
                itemCount: Mensagens.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(Mensagens[index]),
                  );
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.home),
                label: Text("Home"),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => pesquisa()),
                  );
                },
                icon: Icon(Icons.search),
                label: Text("Pesquisa"),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.person),
                label: Text("C"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

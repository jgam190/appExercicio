import 'package:flutter/material.dart';

class pesquisa extends StatelessWidget {
  final List<String> pesquisaLista = [
    "Teste",
    "Teste2",
    "Teste3",
    "Teste4",
  ];

  TextEditingController pesquisaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pesquisa"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: pesquisaLista.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(pesquisaLista[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                String searchText = pesquisaController.text;
              },
              child: Text("Pesquisar"),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

String? nome;

mostrarMenssagem(String nome, BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(content: Text(nome, style: TextStyle(fontSize: 25)));
      });
}

class HelloWord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello word!'),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                label: Text('Nome'), hintText: 'Digite seu nome'),
            onChanged: (valorDigitado) {
              nome = valorDigitado;
            },
          ),
          ElevatedButton(
              child: Text('Clique aqui'),
              onPressed: () {
                var menssagem = 'Ola ${nome}';
                mostrarMenssagem(menssagem.toString(), context);
              })
        ],
      ),
    );
  }
}

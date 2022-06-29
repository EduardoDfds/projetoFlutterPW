import 'package:flutter/material.dart';

class CalcularIdade extends StatelessWidget {
  String? nome;
  int? anoNscimento;

  mostrarResultado(String resultado, BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              content: Text(resultado, style: TextStyle(fontSize: 25)));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calcular idade'),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                label: Text('Nome:'), hintText: 'Digite o seu nome completo'),
            onChanged: (valorDigitado) {
              nome = valorDigitado;
            },
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                label: Text('Data Nascimento:'),
                hintText: 'Digite o ano que nasceu'),
            onChanged: (valordigitado) {
              anoNscimento = int.parse(valordigitado);
            },
          ),
          ElevatedButton(
            child: Text('calcular Idade'),
            onPressed: () {
              var anoAtual = DateTime.now().year;
              var idade = anoAtual - anoNscimento!;
              mostrarResultado(idade.toString(), context);
            },
          )
        ],
      ),
    );
  }
}

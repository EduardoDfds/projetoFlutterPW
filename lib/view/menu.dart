import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  Widget criarBotao(String nomeBotao, VoidCallback? acaoBotao) {
    return (ElevatedButton(child: Text(nomeBotao), onPressed: acaoBotao));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(child: criarBotao('Primeiro botão', () => print('Hello Word!'))),
      criarBotao('Calcular idade',
          () => Navigator.popAndPushNamed(context, '/CalcularIdade')),
      criarBotao('Hello Word!',
          () => Navigator.popAndPushNamed(context, '/HelloWord')),
      criarBotao('Calaculadora',
          () => Navigator.popAndPushNamed(context, '/Calculadora'))
    ])));
  }
}

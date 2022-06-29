import 'package:flutter/material.dart';

class Calculadora extends StatelessWidget {
  double? numero1;
  double? numero2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora'),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(label: Text("")),
            onChanged: (valorDigitado) {
              numero1 = double.parse(valorDigitado);
            },
          ),
          Row(
            children: [
              ElevatedButton(
                child: Text('+'),
                onPressed: () {},
              ),
              ElevatedButton(
                child: Text('-'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double imc;

  ResultScreen(this.imc);

  @override
  Widget build(BuildContext context) {
    Color corBorda;
    String textoResultado;

    if (imc < 18.5) {
      corBorda = Colors.blue;
      textoResultado = 'Abaixo do peso';
    } else if (imc < 25.0) {
      corBorda = Colors.green;
      textoResultado = 'Normal';
    } else if (imc < 30.0) {
      corBorda = Colors.orange;
      textoResultado = 'Sobrepeso';
    } else if (imc < 35.0) {
      corBorda = Colors.red;
      textoResultado = 'Obesidade I';
    } else if (imc < 40.0) {
      corBorda = Colors.red;
      textoResultado = 'Obesidade II';
    } else {
      corBorda = Colors.red;
      textoResultado = 'Obesidade III';
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultado do IMC'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.fromLTRB(40, 5, 40, 5),
          decoration: BoxDecoration(
            border: Border.all(color: corBorda, width: 4),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Seu IMC é: ${imc.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                textoResultado,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: corBorda,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

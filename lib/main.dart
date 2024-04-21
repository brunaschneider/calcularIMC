import 'package:flutter/material.dart';
import 'result_screen.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  double imc = 0;

  void limparCampos() {
    pesoController.clear();
    alturaController.clear();
    imc = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora IMC'),
        actions: [IconButton(onPressed: limparCampos, icon: Icon(Icons.refresh))],
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                child: TextField(
                  controller: pesoController,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: const InputDecoration(
                    labelText: 'Peso (ex.: 69,2)',
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: 300,
                child: TextField(
                  controller: alturaController,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: const InputDecoration(
                    labelText: 'Altura (ex.: 1,70)',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  double peso =
                      double.parse(pesoController.text.replaceAll(',', '.'));
                  double altura =
                      double.parse(alturaController.text.replaceAll(',', '.'));

                  double imcCalculado = calcularIMC(peso, altura);
                  setState(() {
                    imc = imcCalculado;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResultScreen(imc)),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Container(
                  width: 270,
                  height: 50,
                  child: const Center(
                    child: Text('Calcular IMC'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  double calcularIMC(double peso, double altura) {
    return peso / (altura * altura);
  }
}

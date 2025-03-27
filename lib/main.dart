import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Avaliação GUI',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Montagem de GUI'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 2, 62, 138), // Azul escuro
        ),
        body: MyForm(),
      ),
    );
  }
}

class MyForm extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  void showMessage(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Mensagem'),
          content: Text(message),
          actions: [
            TextButton(
              child: Text('Fechar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Texto abaixo da AppBar
          Text(
            'Tela de Cadastro',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey.shade700, // Cinza azulado escuro
            ),
          ),
          SizedBox(height: 16),

          // Campo Nome
          Text('Nome:', style: TextStyle(color: Colors.blueGrey.shade600)),
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),

          // Campo Endereço
          Text('Endereço:', style: TextStyle(color: Colors.blueGrey.shade600)),
          TextField(
            controller: addressController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),

          // Campo Email
          Text('Email:', style: TextStyle(color: Colors.blueGrey.shade600)),
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 32),

          // Botões Cancelar e Salvar
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () => showMessage(context, 'Cancelar clicado!'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 2, 62, 138), // Azul escuro para o botão "Cancelar"
                ),
                child: Text('Cancelar', style: TextStyle(color: Colors.white)),
              ),
              ElevatedButton(
                onPressed: () => showMessage(context, 'Salvar clicado!'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 1, 110, 192), // Azul claro vibrante para o botão "Salvar"
                ),
                child: Text('Salvar', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

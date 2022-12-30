import 'package:flutter/material.dart';

import 'package:first_app/domain/data.dart';

final login = Data();

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

String recievedText = 'Enter text and tap on btn pls';

TextEditingController controller = TextEditingController();

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: controller,
                decoration: const InputDecoration(hintText: "ENTER TEXT"),
              ),
              ElevatedButton(
                onPressed: () {
                  login.getText();
                  setState(() {});
                },
                child: const Text('Click me'),
              ),
              Text(recievedText),
            ],
          ),
        ),
      ),
    );
  }
}

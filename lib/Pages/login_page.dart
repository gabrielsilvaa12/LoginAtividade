import 'dart:io';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Digite seu login',
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Digite sua senha',
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    const Color.fromARGB(255, 17, 190, 83),
                  ),
                ),
                onPressed: () {
                  print(emailController.text);
                  print(passwordController.text);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.login),
                    SizedBox(width: 10),
                    Text('Salvar'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

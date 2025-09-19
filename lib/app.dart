import 'package:flutter/material.dart';
import 'package:login_ativ/Pages/projetos_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ProjetosPage(),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: const ProjetosPage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

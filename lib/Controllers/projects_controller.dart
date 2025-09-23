import 'package:flutter/material.dart';

class ProjectsController {
  // List<String> nomelista = [
  //   "Rafael Sampaio",
  //   "Minorinho da Silva",
  //   "Gustavo Jr",
  //   "Celso Portioli",
  //   "Lucas Marvin da Silva",
  // ];

  // Map<String, dynamic> primeiroCard = {
  //   "icone": Icons.local_florist,
  //   "iitulo": "GardenMe",
  //   "descricao": "Aplicativo de Ecommerce de vendas de Plantas",
  //   "titulobotao": "Ver Projeto",
  // };

  List<Map<String, dynamic>> listaCards = [
    {
      "icone": Icons.local_florist,
      "titulo": "GardenMe",
      "descricao": "Aplicativo de Ecommerce de vendas de Plantas",
      "titulobotao": "Ver Projeto",
      "funcao": () {},
    },
    {
      "icone": Icons.menu_book,
      "titulo": "SaberLivre",
      "descricao":
          "Aplicativo biblioteca digital de livros gratuitos acessível aos clientes",
      "titulobotao": "Ver Projeto",
      "funcao": () {},
    },
    {
      "icone": Icons.location_on,
      "titulo": "TitoGo",
      "descricao": "Aplicativo de Carona entre funcionarios e alunos",
      "titulobotao": "Ver Projeto",
      "funcao": () {},
    },
    {
      "icone": Icons.music_note,
      "titulo": "Escola Arcos Lapa",
      "descricao": "Esccola de musica com aulas online e presenciais",
      "titulobotao": "Ver Projeto",
      "funcao": () {},
    },
  ];
}

import 'package:flutter/material.dart';
import 'package:login_ativ/Config/app_colors.dart';
import 'package:login_ativ/Config/app_text_style.dart';
import 'package:login_ativ/Controllers/projects_controller.dart';
import 'package:login_ativ/Pages/profile_page.dart';
import 'package:login_ativ/Widgets/project_cards.dart';

class ProjetosPage extends StatefulWidget {
  const ProjetosPage({super.key});

  @override
  State<ProjetosPage> createState() => _ProjetosPageState();
}

class _ProjetosPageState extends State<ProjetosPage> {
  final ProjectsController projectsController = ProjectsController();

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ProfilePage()),
      );
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColorPages,
      appBar: AppBar(
        title: Text('Meus Projetins', style: AppTextStyle.titleAppBar),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  "Meus Repositórios",
                  style: AppTextStyle.subTitlePages,
                ),
              ),

              ...projectsController.listaCards.map((card) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 10.0,
                  ),
                  child: ProjectCards(
                    iconeCard: card["icone"],
                    tituloCard: card["titulo"],
                    descricaoCard: card["descricao"],
                    tituloBotao: card["titulobotao"],
                    funcao: () {
                      print('Clicou em ${card["titulo"]}');
                    },
                  ),
                );
              }),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ínicio'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: 'Mensagem',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF200042),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

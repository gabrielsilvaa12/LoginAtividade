import 'package:flutter/material.dart';
import 'package:login_ativ/Config/app_colors.dart';
import 'package:login_ativ/Config/app_text_style.dart';
import 'package:login_ativ/Pages/profile_page.dart';

class ProjetosPage extends StatefulWidget {
  const ProjetosPage({super.key});

  @override
  State<ProjetosPage> createState() => _ProjetosPageState();
}

class _ProjetosPageState extends State<ProjetosPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ProfilePage()),
      );
    } else {
      // Para os outros botões, apenas atualiza o estado (muda a cor)
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  "Asa Da Borboletinha",
                  style: AppTextStyle.subTitlePages,
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.folder_copy,
                              size: 30,
                              color: Color(0xFF200042),
                            ),
                            SizedBox(width: 14),
                            Text(
                              'GardenMe',
                              style: AppTextStyle.titleAppBar.copyWith(
                                fontSize: 20,
                                letterSpacing: 0,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 45,
                          right: 25,
                          top: 10,
                        ),
                        child: Text(
                          "Aplicativo de Ecommerce de vendas de Plantas",
                          style: AppTextStyle.subTitlePages,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                Color(0xFF200042),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Ver Projeto',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.folder_copy,
                              size: 30,
                              color: Color(0xFF200042),
                            ),
                            SizedBox(width: 14),
                            Text(
                              'SaberLivre',
                              style: AppTextStyle.titleAppBar.copyWith(
                                fontSize: 20,
                                letterSpacing: 0,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 45,
                          right: 25,
                          top: 10,
                        ),
                        child: Text(
                          "Aplicativo biblioteca digital de livros gratuitos acessível aos clientes",
                          style: AppTextStyle.subTitlePages,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                Color(0xFF200042),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Ver Projeto',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.folder_copy,
                              size: 30,
                              color: Color(0xFF200042),
                            ),
                            SizedBox(width: 14),
                            Text(
                              'TitoGo',
                              style: AppTextStyle.titleAppBar.copyWith(
                                fontSize: 20,
                                letterSpacing: 0,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 45,
                          right: 25,
                          top: 10,
                        ),
                        child: Text(
                          "Aplicativo de Carona entre funvcionarios e alunos",
                          style: AppTextStyle.subTitlePages,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                Color(0xFF200042),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Ver Projeto',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
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

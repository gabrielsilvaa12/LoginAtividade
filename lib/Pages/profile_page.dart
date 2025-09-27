import 'package:flutter/material.dart';
import 'package:login_ativ/Pages/login_page.dart';
import 'package:login_ativ/Pages/projetos_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const ProjetosPage()),
        );
        break;
      case 1:
        break;
      case 2:
        ;
    }
  }

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color(0xFF200042);

    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
        child: SafeArea(
          // O conteúdo do seu body permaneceu o mesmo
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Align(
                alignment: Alignment.topRight,
                child: Icon(Icons.settings, color: primaryColor),
              ),
              const SizedBox(height: 20),
              const CircleAvatar(
                radius: 50,
                backgroundColor: Color(0xFF343A40),
                child: Icon(Icons.person, size: 60, color: Colors.white),
              ),
              const SizedBox(height: 15),
              const Text(
                'Gabriel Aparecido',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 32, 0, 66),
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  letterSpacing: 1.5,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Desenvolvedor Back-End',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 32, 0, 66),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  letterSpacing: 1.5,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Nao sei oq escrever aqui',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 32, 0, 66),
                  fontSize: 14,
                  letterSpacing: 1.5,
                ),
              ),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Projects',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '25',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 1,
                      color: Colors.grey.shade300,
                    ),
                    const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Connections',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '120',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 1,
                      color: Colors.grey.shade300,
                    ),
                    const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Commits',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '500+',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        print('Edit Profile Pressionado!');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'Edit Profile',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const MyHomePage(title: "MyHomePage"),
                          ),
                          (Route<dynamic> route) => false,
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.grey.shade300),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'Logout',
                        style: TextStyle(
                          fontSize: 16,
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
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
        selectedItemColor: const Color(0xFF200042),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:login_ativ/Config/app_colors.dart';
import 'package:login_ativ/Config/app_text_style.dart';

class ProjetosPage extends StatefulWidget {
  const ProjetosPage({super.key});

  @override
  State<ProjetosPage> createState() => _ProjetosPageState();
}

class _ProjetosPageState extends State<ProjetosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColorPages,

      appBar: AppBar(
        title: Text('Meus Projetins', style: AppTextStyle.titleAppBar),
      ),
      body: Padding(
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
          ],
        ),
      ),
    );
  }
}

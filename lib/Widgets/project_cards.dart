import 'package:flutter/material.dart';
import 'package:login_ativ/Config/app_text_style.dart';

class ProjectCards extends StatelessWidget {
  final IconData iconeCard;
  final String tituloCard;
  final String descricaoCard;
  final String tituloBotao;
  final VoidCallback funcao;

  const ProjectCards({
    super.key,
    required this.iconeCard,
    required this.tituloCard,
    required this.descricaoCard,
    required this.tituloBotao,
    required this.funcao,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Icon(iconeCard, size: 40, color: Color(0xFF200042)),
                  SizedBox(width: 14),
                  Text(
                    tituloCard,
                    style: AppTextStyle.titleAppBar.copyWith(
                      fontSize: 20,
                      letterSpacing: 0,
                      color: Color(0xFF200042),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 45, right: 25, top: 10),
              child: Text(descricaoCard, style: AppTextStyle.subTitlePages),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color(0xFF200042)),
                  ),
                  onPressed: funcao,
                  child: Text(
                    tituloBotao,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

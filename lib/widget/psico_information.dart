import 'package:flutter/material.dart';
import 'package:safemind_web/widget/info_section.dart';

class PsicoInformation extends StatelessWidget {
  const PsicoInformation({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      color: Color.fromRGBO(251, 249, 240, 1.0),
      height: 400.0,
      width: screenSize.width,
      child: LayoutBuilder(
        builder: (context, constraints) {
          // Check if screen width is small (e.g., mobile) or large (e.g., desktop)
          bool isSmallScreen = constraints.maxWidth < 800;
          double cardWidth = isSmallScreen ? constraints.maxWidth * 0.9 : 400.0;

          return SingleChildScrollView(
            scrollDirection: isSmallScreen ? Axis.vertical : Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: isSmallScreen
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: _buildInfoSections(cardWidth),
                    )
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: _buildInfoSections(cardWidth),
                    ),
            ),
          );
        },
      ),
    );
  }

  // Helper method to create the list of InfoSection widgets with spacing
  List<Widget> _buildInfoSections(double cardWidth) {
    return [
      SizedBox(
        width: cardWidth,
        child: InfoSection(
          icon: Icons.help_outline,
          title: "Psicoterapia para quê?",
          description:
              "A psicoterapia é indicada para todas as pessoas que desejam se conhecer profundamente, se desenvolver enquanto seres psíquicos e melhorar suas relações interpessoais. Além disso, a psicoterapia pode diminuir o sofrimento emocional, sendo parte essencial do tratamento de transtornos como ansiedade e depressão.",
        ),
      ),
      SizedBox(width: 16),
      SizedBox(
        width: cardWidth,
        child: InfoSection(
          icon: Icons.group,
          title: "Psicoterapia para quem?",
          description:
              "Todas as pessoas podem se beneficiar com o processo terapêutico. Meu foco, atualmente, é o atendimento de adultos e adolescentes.",
        ),
      ),
      SizedBox(width: 16),
      SizedBox(
        width: cardWidth,
        child: InfoSection(
          icon: Icons.settings,
          title: "Como Funciona?",
          description:
              "As sessões ocorrem semanalmente, com duração de 50 minutos, em dias e horários definidos. No momento, conduzo os encontros, exclusivamente, de forma online.",
        ),
      ),
      SizedBox(width: 16),
      SizedBox(
        width: cardWidth,
        child: InfoSection(
          icon: Icons.dynamic_feed,
          title: "Qual a dinâmica dos encontros?",
          description:
              "Durante as sessões, vamos conversar sobre as angústias e alegrias, pontos de tensão e de conforto, sobre o sofrimento psíquico vivenciado, sintomas, etc. A partir disso, vamos aprofundá-los, simbolizá-los, repensá-los sob outras perspectivas e integrar tudo isso à totalidade da psique, buscando o desenvolvimento pessoal.",
        ),
      ),
    ];
  }
}
import 'package:flutter/material.dart';

class WhoAmI extends StatelessWidget {
  const WhoAmI({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: 600,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        elevation: 4,
        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            double imageWidth = constraints.maxWidth * 0.3; // 30% of card width
            return Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    "lib/assets/ve.webp",
                    width: imageWidth, // Responsive width
                    height: constraints.maxHeight,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Icon(
                      Icons.error,
                      size: 50,
                      color: Colors.red,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            "Quem é Verônica Mangili?",
                            style: TextStyle(
                              fontSize: 32.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Padding(
                          padding: const EdgeInsets.all(32.0),
                          child: Text(
                            "Me formei Psicóloga em 2015 pela UNESP de Bauru e logo ingressei no mestrado em Psicologia do Desenvolvimento Humano na mesma Universidade. Meu propósito desde então é apoiar as pessoas em suas jornadas psíquicas, a partir do acolhimento, compreensão, ampliação, simbolização e integração das vivências, das angústias e alegrias que nos atravessam. Para isso, estou constantemente aprimorando meus conhecimentos e aprofundando meu olhar sobre minhas vivências, angústias e sentimentos através da psicoterapia.",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey[600],
                            ),
                            maxLines: 10, // Increased lines for readability
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
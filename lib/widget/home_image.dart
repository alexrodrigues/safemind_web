import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      color: Color.fromRGBO(140, 170, 209, 1.0),
      height: 500.0,
      width: screenSize.width,
      child: SvgPicture.asset(
        'lib/assets/home.svg',
        width: screenSize.width,
        fit: BoxFit.contain,
      ),
    );
  }
}

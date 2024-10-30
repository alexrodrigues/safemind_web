import 'package:flutter/material.dart';

class WebBar extends StatelessWidget {
  const WebBar({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: Color.fromRGBO(251, 249, 240, 1.0),
      child: const Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HoverText('Sobre'),
            SizedBox(width: 100),
            HoverText('Para quem'),
            SizedBox(width: 100),
            HoverText('Quem sou eu?'),
            SizedBox(width: 100),
            HoverText('Contato'),
          ],
        ),
      ),
    );
  }
}

class HoverText extends StatefulWidget {
  final String text;

  const HoverText(this.text, {super.key});

  @override
  _HoverTextState createState() => _HoverTextState();
}

class _HoverTextState extends State<HoverText> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: AnimatedDefaultTextStyle(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        style: TextStyle(
          color: isHovered ? Color.fromRGBO(140, 170, 209, 1.0) : Colors.black,
          fontWeight: isHovered ? FontWeight.bold : FontWeight.normal,
          fontSize: isHovered ? 18 : 16,
        ),
        child: InkWell(
          onTap: () {},
          child: Text(widget.text),
        ),
      ),
    );
  }

  void _onHover(bool hover) {
    setState(() {
      isHovered = hover;
    });
  }
}

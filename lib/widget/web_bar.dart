import 'package:flutter/material.dart';

class WebBar extends StatelessWidget {
  final Function(int) onItemTap;
  WebBar({required this.onItemTap});  

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(251, 249, 240, 1.0),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HoverText('Sobre', () => onItemTap(0)),
            SizedBox(width: 100),
            HoverText('Para quem', () => onItemTap(1)),
            SizedBox(width: 100),
            HoverText('Quem sou eu?', () => onItemTap(2)),
            SizedBox(width: 100),
            HoverText('Contato?', () => onItemTap(3)),
          ],
        ),
      ),
    );
  }
}

class HoverText extends StatefulWidget {
  final String text;
  final Function() onItemTap;

  const HoverText(this.text, this.onItemTap, {super.key});

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
          onTap: () {
            widget.onItemTap();
          },
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

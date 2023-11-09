import 'package:flutter/material.dart';

class ButtonR extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  ButtonR({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 350.0, // Largura do botão
        height: 51.0, // Altura do botão
        decoration: BoxDecoration(
          color: Colors.black, // Cor de fundo preta
          borderRadius: BorderRadius.all(Radius.circular(16)) // Torna o botão redondo
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white, // Cor do texto branca
              fontSize: 16.0, // Tamanho da fonte do texto
            ),
          ),
        ),
      ),
    );
  }
}
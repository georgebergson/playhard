import 'package:flutter/material.dart';

class ColorStyle {
  // inicio de constantes gradientes
  final fundoGradiente = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color.fromARGB(255, 34, 40, 55),
      Color.fromARGB(255, 28, 32, 44),
      Color.fromARGB(255, 41, 47, 67),
    ],
  );
  final fundoGradienteTop = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color.fromRGBO(28, 32, 44, 1),
      Color.fromRGBO(28, 32, 44, 0.8),
      Color.fromRGBO(28, 32, 44, 0.3),
      Color.fromRGBO(28, 32, 44, 0.8),
      Color.fromRGBO(28, 32, 44, 1),
    ],
  );
 // fim constantes gradientes


 // cores para o sistema 
 final corPrimaria  = const Color.fromRGBO(28, 32, 44, 1);
 final corSecundaria = const Color(0xFF303649);
 final corTerceira = const  Color.fromARGB(255, 123, 141, 157);
 final corBotaoPrimario = const Color.fromARGB(255, 41, 47, 67);
}

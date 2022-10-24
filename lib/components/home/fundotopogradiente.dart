import 'package:flutter/material.dart';
import 'package:playhard/assets/style/color_style.dart';

class FundoTopoGradiente extends StatelessWidget {
  const FundoTopoGradiente({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: ColorStyle().fundoGradienteTop,
      ),
    );
  }
}

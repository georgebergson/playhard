import 'package:flutter/material.dart';
import 'package:playhard/assets/style/images_style.dart';

class FundoLogin extends StatelessWidget {
  const FundoLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Opacity(
      opacity: 0.2,
      child: Image.asset(
        ImagesStyle().imgfundologin,
        width: size.width,
        height: size.height,
        fit: BoxFit.cover,
      ),
    );
  }
}

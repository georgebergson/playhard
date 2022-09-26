import 'package:flutter/material.dart';
import 'package:playhard/assets/style/images_style.dart';

class FundoTopo extends StatelessWidget {
  const FundoTopo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Image.asset(
      ImagesStyle().imgfundotopo,
      width: size.width,
      height: size.height / 2.5,
      fit: BoxFit.cover,
    );
  }
}

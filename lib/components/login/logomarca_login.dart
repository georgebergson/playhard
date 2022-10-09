import 'package:flutter/material.dart';
import 'package:playhard/assets/style/images_style.dart';

class LogomarcaLogin extends StatelessWidget {
  const LogomarcaLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SizedBox(
            height: 80,
            child: Image.asset(
              ImagesStyle().imglogomarca,
            ),
          ),
        ),
      ],
    );
  }
}

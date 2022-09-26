import 'package:flutter/material.dart';
import 'package:playhard/assets/style/color_style.dart';

// ignore: must_be_immutable
class BotaoMeioLogin extends StatelessWidget {
  final String ? texto;
  const BotaoMeioLogin({Key? key, this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              ColorStyle().corBotaoPrimario,
            ),
          ),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(texto.toString(), style: const TextStyle(
                    fontFamily: 'PingFang',
                    fontSize: 18,
                    fontWeight: FontWeight.bold),),
              const Icon(Icons.navigate_next)
            ],
          )),
    );
  }
}

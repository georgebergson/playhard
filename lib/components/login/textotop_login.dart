import 'package:flutter/material.dart';

class TextoTopoLogin extends StatelessWidget {
  const TextoTopoLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'Logged in as flajokmain',
          style: TextStyle(color: Colors.white70, fontFamily: 'PingFang'),
        ),
        Text(
          'N5KCV',
          style: TextStyle(
              color: Colors.white70, fontSize: 50, fontFamily: 'PingFang'),
        ),
      ],
    );
  }
}

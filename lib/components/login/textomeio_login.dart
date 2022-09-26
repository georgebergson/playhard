import 'package:flutter/material.dart';

class TextoMeioLogin extends StatelessWidget {
  const TextoMeioLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
                    'You’ll enter your code each time you enter your password to sign in to your Steam account.',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'PingFang',
                        fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Tip: If you don\'t share your PC, you can select "Remember my password" when you sign in to the PC client to enter your password and authenticator code less often.',
                    style: TextStyle(
                        color: Colors.blue,
                        fontFamily: 'PingFang',
                        fontSize: 17),
                  ),
                  SizedBox(height: 70)
      ],
    );
  }
}
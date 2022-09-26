import 'package:flutter/material.dart';

class ProgressBarLogin extends StatelessWidget {
  const ProgressBarLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 150),
      child: LinearProgressIndicator(
        value: 0.6,
      ),
    );
  }
}

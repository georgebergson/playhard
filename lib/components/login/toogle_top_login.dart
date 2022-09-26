import 'package:flutter/material.dart';
import 'package:playhard/assets/style/color_style.dart';
import 'package:playhard/assets/style/decoration_style.dart';

class ToogleTopLogin extends StatelessWidget {
  const ToogleTopLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const List<Widget> botaotopo = <Widget>[
      Text('Steam guard'),
      Text('Confirmation')
    ];
    return Container(
      width: size.width / 1.1,
      padding: const EdgeInsets.all(1),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: ColorStyle().corSecundaria,
        borderRadius: DecorationStyle().boxsimplesRadius,
      ),
      child: ToggleButtons(
        direction: Axis.horizontal,
        onPressed: (int index) {
          // setState(() {
          //   // The button that is tapped is set to true, and the others to false.
          //   for (int i = 0; i < _selectedFruits.length; i++) {
          //     _selectedFruits[i] = i == index;
          //   }
          // });
        },
        borderRadius: DecorationStyle().boxsimplesRadius,
        selectedBorderColor: ColorStyle().corSecundaria,
        borderWidth: 2,
        selectedColor: Colors.white,
        fillColor: ColorStyle().corPrimaria,
        color: ColorStyle().corTerceira,
        constraints: BoxConstraints(
          minHeight: 35.0,
          minWidth: size.width / 2.25,
        ),
        isSelected: const [true, false],
        children: botaotopo,
      ),
    );
  }
}

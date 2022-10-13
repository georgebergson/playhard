import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:playhard/assets/style/color_style.dart';

class ListaStore extends StatelessWidget {
  const ListaStore({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: size.width / 5.5,
                  height: 50,
                  decoration: BoxDecoration(
                    color: ColorStyle().corBotaoPrimario,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Grand Theft Auto V',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'PingFang',
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.window_sharp,
                          color: ColorStyle().corSecundaria,
                          size: 15,
                        ),
                        Text(
                          ' Windows',
                          style: TextStyle(
                              color: ColorStyle().corTerceira,
                              fontFamily: 'PingFang',
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Text(
                      'R\$ 20',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        decoration: TextDecoration.lineThrough,
                        decorationThickness: 3,
                      ),
                    ),
                    Text(
                      'R\$ 10',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(3)),
                  child: Text(
                    '- 50%',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'PingFang',
                        fontSize: 8),
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

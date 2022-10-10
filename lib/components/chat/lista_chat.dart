import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:playhard/assets/style/color_style.dart';

class ListaChat extends StatelessWidget {
  const ListaChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: ColorStyle().corHr,
                    child: const Text('AH'),
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
                            'PlayHardGame',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'PingFang',
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ],
                      ),
                      Text(
                        'yesterday • 2:20 pm',
                        style: TextStyle(
                            color: ColorStyle().corTerceira,
                            fontFamily: 'PingFang',
                            fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
              Icon(
                Icons.circle,
                size: 15,
                color: Colors.white,
              )
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            color: ColorStyle().corHr,
            height: 1,
          ),
        ],
      ),
    );
  }
}

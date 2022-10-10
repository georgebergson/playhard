import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playhard/assets/style/color_style.dart';

class BottomNavigatorBarComponents extends StatelessWidget {
  const BottomNavigatorBarComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: const Color.fromARGB(255, 28, 32, 44),
      ),
      child: BottomNavigationBar(
        onTap: (index) {
          if (index == 0) {
            Get.toNamed('/');
          }
          if (index == 1) {
            Get.toNamed('/comunidade');
          }
          if (index == 2) {
            Get.toNamed('/chat');
          }
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mode_comment_outlined),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_suggest_rounded),
            label: 'School',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.white70,
        unselectedItemColor: ColorStyle().corTerceira,
      ),
    );
  }
}

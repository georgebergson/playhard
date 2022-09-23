import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const List<Widget> botaotopo = <Widget>[
      Text('Steam guard'),
      Text('Confirmation')
    ];
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromARGB(255, 34, 40, 55),
              Color.fromARGB(255, 28, 32, 44),
              Color.fromARGB(255, 41, 47, 67),
            ])),
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height / 2.5,
              child: Stack(children: [
                Image.asset(
                  'lib/assets/img/fundotopo.png',
                  width: size.width,
                  height: size.height / 2.5,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Color.fromRGBO(28, 32, 44, 1),
                        Color.fromRGBO(28, 32, 44, 0.8),
                        Color.fromRGBO(28, 32, 44, 0.3),
                        Color.fromRGBO(28, 32, 44, 0.8),
                        Color.fromRGBO(28, 32, 44, 1),
                      ])),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: SizedBox(
                            width: size.width / 2,
                            child:
                                Image.asset('lib/assets/img/logoplayhard.png'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Container(
                      width: size.width / 2,
                      padding: const EdgeInsets.all(1),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Color(0xFF303649),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
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
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        selectedBorderColor: const Color(0xFF303649),
                        borderWidth: 2,
                        selectedColor: Colors.white,
                        fillColor: const Color.fromRGBO(28, 32, 44, 1),
                        color: Color(0xFF7B8D9D),
                        constraints: BoxConstraints(
                          minHeight: 35.0,
                          minWidth: size.width / 4.2,
                        ),
                        isSelected: const [true, false],
                        children: botaotopo,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    const Text(
                      'Logged in as flajokmain',
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                    const Text(
                      'N5KCV',
                      style: TextStyle(color: Colors.white70, fontSize: 60),
                    ),
                    const SizedBox(height: 20),
                    const Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 150),
                      child: LinearProgressIndicator(
                        value: 0.6,
                     
                      ),
                    ),
                  ],
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

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
            SizedBox(
              width: size.width,
              height: size.height / 2.5,
              child: Stack(
                children: [
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
                              height: 100,
                              child: Image.asset(
                                  'lib/assets/img/logoplayhard.png'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Container(
                        width: size.width / 1.1,
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
                          color: const Color(0xFF7B8D9D),
                          constraints: BoxConstraints(
                            minHeight: 35.0,
                            minWidth: size.width / 2.25,
                          ),
                          isSelected: const [true, false],
                          children: botaotopo,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Logged in as flajokmain',
                        style: TextStyle(
                            color: Colors.white70, fontFamily: 'PingFang'),
                      ),
                      const Text(
                        'N5KCV',
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 50,
                            fontFamily: 'PingFang'),
                      ),
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 150),
                        child: LinearProgressIndicator(
                          value: 0.6,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const Text(
                    'You’ll enter your code each time you enter your password to sign in to your Steam account.',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'PingFang',
                        fontSize: 18),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Tip: If you don\'t share your PC, you can select "Remember my password" when you sign in to the PC client to enter your password and authenticator code less often.',
                    style: TextStyle(
                        color: Colors.blue,
                        fontFamily: 'PingFang',
                        fontSize: 17),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Container(
                    height: 50,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 41, 47, 67),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Remove Authenticator",
                              style: TextStyle(
                                  fontFamily: 'PingFang',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.navigate_next)
                          ],
                        )),
                  ),
                  Container(
                    height: 50,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 41, 47, 67),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "My Recovery Code",
                              style: TextStyle(
                                  fontFamily: 'PingFang',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.navigate_next)
                          ],
                        )),
                  ),
                  Container(
                    height: 50,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 41, 47, 67),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Help",
                              style: TextStyle(
                                  fontFamily: 'PingFang',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.navigate_next)
                          ],
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor:const Color.fromARGB(255, 28, 32, 44),
        ),
        child: BottomNavigationBar(
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
          unselectedItemColor: Color.fromARGB(255, 62, 70, 96),
        ),
      ),
    );
  }
}

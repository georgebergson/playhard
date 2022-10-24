import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:playhard/assets/style/color_style.dart';
import 'package:playhard/components/geral/bottomnavigatorbar.dart';
import 'package:playhard/components/home/logomarca_home.dart';
import 'package:playhard/components/store/lista_store.dart';

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          gradient: ColorStyle().fundoGradiente,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LogomarcaLogin(),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            width: size.width / 1.2,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(10), // Image border
                              child: SizedBox.fromSize(
                                // Image radius
                                child: Image.asset('lib/assets/img/ac.jpg',
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: size.width / 1.2,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(10), // Image border
                              child: SizedBox.fromSize(
                                // Image radius
                                child: Image.asset('lib/assets/img/cs.jpg',
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: size.width / 1.2,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(10), // Image border
                              child: SizedBox.fromSize(
                                // Image radius
                                child: Image.asset('lib/assets/img/mario.jpg',
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  ColorStyle().corBotaoPrimario),
                            ),
                            onPressed: () {},
                            child: Text('Top Sellers'),
                          ),
                          SizedBox(width: 5),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Free to play'),
                          ),
                          SizedBox(width: 5),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  ColorStyle().corBotaoPrimario),
                            ),
                            onPressed: () {},
                            child: Text('Early Access'),
                          ),
                          SizedBox(width: 5),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  ColorStyle().corBotaoPrimario),
                            ),
                            onPressed: () {},
                            child: Text('Artwork'),
                          ),
                          SizedBox(width: 5),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  ColorStyle().corBotaoPrimario),
                            ),
                            onPressed: () {},
                            child: Text('Workshop'),
                          ),
                          SizedBox(width: 5),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  ColorStyle().corBotaoPrimario),
                            ),
                            onPressed: () {},
                            child: Text('Comunity'),
                          ),
                          SizedBox(width: 5),
                        ],
                      ),
                    ),
                    ListaStore(),
                    ListaStore(),
                    ListaStore(),
                    ListaStore(),
                    ListaStore(),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                color: ColorStyle().corHr,
                height: 5,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigatorBarComponents(),
    );
  }
}

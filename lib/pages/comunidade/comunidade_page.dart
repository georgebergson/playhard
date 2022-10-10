import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:playhard/assets/style/color_style.dart';
import 'package:playhard/components/geral/bottomnavigatorbar.dart';
import 'package:playhard/components/login/logomarca_login.dart';

class ComunidadePage extends StatelessWidget {
  const ComunidadePage({Key? key}) : super(key: key);

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
            children: [
              LogomarcaLogin(),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Text(
                      'Community and official content for all games and software on Steam',
                      style: TextStyle(
                          color: ColorStyle().corTerceira,
                          fontFamily: 'PingFang',
                          fontSize: 14),
                    ),
                    SizedBox(height: 20),
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
                            child: Icon(Icons.search),
                          ),
                          SizedBox(width: 5),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('All'),
                          ),
                          SizedBox(width: 5),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  ColorStyle().corBotaoPrimario),
                            ),
                            onPressed: () {},
                            child: Text('Screenshots'),
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
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                color: ColorStyle().corHr,
                height: 7,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
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
                                SizedBox(width: 10),
                                Container(
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      color: Colors.purple,
                                      borderRadius: BorderRadius.circular(3)),
                                  child: Text(
                                    'NEWS',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'PingFang',
                                        fontSize: 8),
                                  ),
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
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10), // Image border
                      child: SizedBox.fromSize(
                        // Image radius
                        child: Image.asset('lib/assets/img/cs.jpg',
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Florida tourist attraction sues Fortnite, seeks removal of in-game castle',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'PingFang',
                          fontSize: 16),
                    ),
                    Text(
                      'Coral Castle Museum, a tourist attraction near Miami, is suing Fortnite maker Epic Games for trademark infringement and unfair competition.',
                      style: TextStyle(
                          color: ColorStyle().corTerceira,
                          fontFamily: 'PingFang',
                          fontSize: 14),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      color: ColorStyle().corTerceira,
                      height: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.recommend, color: Colors.green),
                            Text(
                              '324',
                              style: TextStyle(color: Colors.green),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Icon(
                              Icons.messenger_outline,
                              color: ColorStyle().corTerceira,
                            ),
                            Text(
                              '12',
                              style: TextStyle(color: ColorStyle().corTerceira),
                            )
                          ],
                        ),
                        Icon(
                          Icons.share,
                          color: ColorStyle().corTerceira,
                        ),
                      ],
                    ),
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

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:playhard/assets/style/color_style.dart';
import 'package:playhard/components/geral/bottomnavigatorbar.dart';
import 'package:playhard/components/home/botaomeio_home.dart';
import 'package:playhard/components/home/fundotopo.dart';
import 'package:playhard/components/home/fundotopogradiente.dart';
import 'package:playhard/components/home/logomarca_home.dart';
import 'package:playhard/components/home/progressbar_home.dart';
import 'package:playhard/components/home/textomeio_home.dart';
import 'package:playhard/components/home/textotop_home.dart';
import 'package:playhard/components/home/toogle_top_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      //background gradiente geral
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          gradient: ColorStyle().fundoGradiente,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: size.width,
                height: size.height / 2.2,
                child: Stack(
                  children: [
                    // Imagem para Fundo Topo Login
                    const FundoTopo(),
                    // Gradiente Sobrepondo a Imagem Acima p/ efeito
                    const FundoTopoGradiente(),
                    Column(
                      children: const [
                        // Logomarca PlayHard
                        LogomarcaLogin(),
                        SizedBox(height: 10),
                        // Toogle para Login
                        ToogleTopLogin(),
                        SizedBox(height: 20),

                        // texto para codigo e informaçoes topo
                        TextoTopoLogin(),

                        //barra de progresso topo
                        ProgressBarLogin(),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: const [
                    TextoMeioLogin(),
                    BotaoMeioLogin(texto: "Remove Authenticator"),
                    BotaoMeioLogin(texto: "My Recovery Code"),
                    BotaoMeioLogin(texto: "Help"),
                    const SizedBox(height: 30),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigatorBarComponents(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:playhard/assets/style/color_style.dart';
import 'package:playhard/components/chat/lista_chat.dart';
import 'package:playhard/components/geral/bottomnavigatorbar.dart';
import 'package:playhard/components/login/botaomeio_login.dart';
import 'package:playhard/components/login/fundotopo.dart';
import 'package:playhard/components/login/fundotopogradiente.dart';
import 'package:playhard/components/login/logomarca_login.dart';
import 'package:playhard/components/login/progressbar_login.dart';
import 'package:playhard/components/login/textomeio_login.dart';
import 'package:playhard/components/login/textotop_login.dart';
import 'package:playhard/components/login/toogle_top_login.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

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
                height: size.height / 3.4,
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
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              ListaChat(),
              ListaChat(),
              ListaChat(),
              ListaChat(),
              ListaChat(),
              ListaChat(),
              ListaChat(),
              ListaChat(),
              ListaChat(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigatorBarComponents(),
    );
  }
}

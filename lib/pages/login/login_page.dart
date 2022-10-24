import 'package:flutter/material.dart';
import 'package:playhard/assets/style/color_style.dart';
import 'package:playhard/components/home/fundotopogradiente.dart';
import 'package:playhard/components/home/logomarca_home.dart';
import 'package:playhard/components/login/fundo_login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                child: Stack(
                  children: [
                    const FundoLogin(),
                    // Gradiente Sobrepondo a Imagem Acima p/ efeito
                    const FundoTopoGradiente(),

                    Column(
                      children: const [
                        // Logomarca PlayHard
                        LogomarcaLogin(),
                        SizedBox(height: 50),
                      ],
                    ),

                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: size.height / 1.8,
                              ),
                              Text(
                                'INICIAR SESSÃO',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'PingFang',
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(20)),
                                child: TextField(
                                  cursorColor: Colors.red,
                                  decoration: InputDecoration(
                                    labelText: 'Usuario:',
                                    hintText: 'Digite seu Usuario',
                                    prefixIcon: Icon(
                                      Icons.person,
                                      color: ColorStyle().corPrimaria,
                                    ),
                                    hintStyle: TextStyle(
                                      color: ColorStyle().corPrimaria,
                                      fontSize: 18,
                                    ),
                                    focusedBorder: InputBorder.none,
                                    labelStyle: TextStyle(
                                        color: ColorStyle().corPrimaria,
                                        fontSize: 16),
                                    enabledBorder: InputBorder.none,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(20)),
                                child: TextField(
                                  obscureText: true,
                                  cursorColor: Colors.red,
                                  decoration: InputDecoration(
                                    labelText: 'Senha:',
                                    hintText: 'Digite sua Senha',
                                    prefixIcon: Icon(
                                      Icons.person,
                                      color: ColorStyle().corPrimaria,
                                    ),
                                    hintStyle: TextStyle(
                                      color: ColorStyle().corPrimaria,
                                      fontSize: 18,
                                    ),
                                    focusedBorder: InputBorder.none,
                                    labelStyle: TextStyle(
                                        color: ColorStyle().corPrimaria,
                                        fontSize: 16),
                                    enabledBorder: InputBorder.none,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                width: size.width,
                                height: 50,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text('ACESSAR SUA CONTA'),
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                    ),
                                    backgroundColor: MaterialStateProperty.all(
                                        ColorStyle().corBotaoPrimario),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Column(
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'REGISTRAR',
                                  style: TextStyle(color: Colors.red),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

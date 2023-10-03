// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playhard/assets/style/color_style.dart';
import 'package:playhard/components/home/fundotopogradiente.dart';
import 'package:playhard/components/home/logomarca_home.dart';
import 'package:playhard/components/login/fundo_login.dart';
import 'package:playhard/controllers/login_controller.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // LoginController logincontroller = Get.put(LoginController());
    alerta(titulo, mensagem) {
      showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Text('$titulo'),
          content: Text('$mensagem'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: Text(
                'OK',
                style: TextStyle(color: ColorStyle().corPrimaria),
              ),
            ),
          ],
        ),
      );
    }

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
                              SizedBox(height: 150 //size.height / 1.8,
                                  ),
                              Text(
                                'REGISTRA-SE',
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
                                  ///onChanged: logincontroller.pegaUsuario,
                                  cursorColor: Colors.red,
                                  decoration: InputDecoration(
                                    labelText: 'Nome:',
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
                                  ///onChanged: logincontroller.pegaUsuario,
                                  cursorColor: Colors.red,
                                  decoration: InputDecoration(
                                    labelText: 'CPF',
                                    hintText: 'Digite seu CPF',
                                    prefixIcon: Icon(
                                      Icons.account_balance_rounded,
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
                                  ///onChanged: logincontroller.pegaUsuario,
                                  cursorColor: Colors.red,
                                  decoration: InputDecoration(
                                    labelText: 'Email:',
                                    hintText: 'Digite seu Email',
                                    prefixIcon: Icon(
                                      Icons.email,
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
                                  //onChanged: logincontroller.pegaSenha,
                                  obscureText: true,
                                  cursorColor: Colors.red,
                                  decoration: InputDecoration(
                                    labelText: 'Senha:',
                                    hintText: 'Digite sua Senha',
                                    prefixIcon: Icon(
                                      Icons.password,
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
                                  ///onChanged: logincontroller.pegaUsuario,
                                  cursorColor: Colors.red,
                                  decoration: InputDecoration(
                                    labelText: 'Confirmação de Senha:',
                                    hintText: 'Digite seu Senha',
                                    prefixIcon: Icon(
                                      Icons.password,
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
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('REGISTRAR'),
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

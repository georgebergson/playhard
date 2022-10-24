import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playhard/pages/login/login_page.dart';
import 'package:playhard/routes/app_pages.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.login, //Rota inicial
    // initialBinding: HomeBinding(), // dependencias iniciais
    theme: ThemeData(),
    defaultTransition: Transition.cupertino, // Transição de telas padrão
    getPages: AppPages
        .routes, // Seu array de navegação contendo as rotas e suas pages
    home: const LoginPage(), // Page inicial
  ));
}

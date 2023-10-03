import 'package:get/get.dart';
import 'package:playhard/pages/chat/chat_page.dart';
import 'package:playhard/pages/comunidade/comunidade_page.dart';
import 'package:playhard/pages/home/home_page.dart';
import 'package:playhard/pages/login/login_page.dart';
import 'package:playhard/pages/register/register_page.dart';
import 'package:playhard/pages/store/store_page.dart';
part './app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.login,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
    ),
    GetPage(
      name: Routes.comunidade,
      page: () => const ComunidadePage(),
    ),
    GetPage(
      name: Routes.chat,
      page: () => const ChatPage(),
    ),
    GetPage(
      name: Routes.store,
      page: () => const StorePage(),
    ),
    GetPage(
      name: Routes.register,
      page: () => const RegisterPage(),
    ),
    
  ];
}

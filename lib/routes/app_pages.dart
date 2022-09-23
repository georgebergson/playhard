import 'package:get/get.dart';
import 'package:playhard/pages/login/login_page.dart';
part './app_routes.dart';

class AppPages {
  
  static final routes = [
    GetPage(name: Routes.login, page:()=> const LoginPage(),),

  ];
}
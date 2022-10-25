import 'package:get/get.dart';

class LoginController extends GetxController {
  final usuario = "".obs;
  final senha = "".obs;

  pegaUsuario(user) => usuario.value = user;
  pegaSenha(pass) => senha.value = pass;

  fazerLogin() {
    if (usuario.value == "") {
      return 0;
    } else if (senha.value == "") {
      return 1;
    } else {
      return 2;
    }
  }
}

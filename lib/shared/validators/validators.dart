import 'package:password_strength/password_strength.dart';

class Validators {
  String? validateEmail(String value) {
    RegExp regex = RegExp(r'\w+@\w+\.\w+');
    if (value.isEmpty)
      return 'Insira um email';
    else if (!regex.hasMatch(value))
      return "Insira um email válido";
    else
      return null;
  }

  String? validatePassword(String value, String value1) {
    if (value != value1) {
      return "As senhas não conferem";
    }
    double strength = estimatePasswordStrength(value);
    if (strength < 0.4) {
      return 'Escolha uma senha mais forte';
    }
  }
}

class LoginController {
  String email = "";
  String senha = "";

  void onChanged({String? email, String? senha}) {
    this.email = email ?? this.email;
    this.senha = senha ?? this.senha;
  }

  bool login() {
    if (email == "pessoa@raro.com" && senha == "123456") {
      return true;
    } else {
      return false;
    }
  }
}

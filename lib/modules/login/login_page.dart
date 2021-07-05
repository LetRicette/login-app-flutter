import 'package:flutter/material.dart';
import 'package:login/modules/login/login_controller.dart';
import 'package:login/shared/validators/validators.dart';
import '../shared/widgets/input_text/input_text_widget.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.blue.shade500,
            Colors.purpleAccent,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Faça seu login:',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        InputTextWidget(
                          controller: _emailController,
                          label: "Email",
                          validator: (value) =>
                              Validators().validateEmail(value!),
                          onChange: (value) {
                            controller.onChanged(email: value);
                          },
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        InputTextWidget(
                          label: "Senha",
                          obscureText: true,
                          controller: _senhaController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Digite a senha";
                            } else if (value.length < 6) {
                              return "Digite uma senha com 6 dígitos";
                            }
                            return null;
                          },
                          onChange: (value) {
                            controller.onChanged(senha: value);
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          child: Text(
                            'Entrar',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            onPrimary: Colors.purple,
                            shadowColor: Colors.purple,
                            primary: Colors.white,
                            padding: EdgeInsets.symmetric(
                              horizontal: 50,
                              vertical: 10,
                            ),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              if (controller.login()) {
                                Navigator.pushReplacementNamed(
                                    context, "/home");
                              }
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          child: Text(
                            'Recuperar Senha',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            onPrimary: Colors.white,
                            shadowColor: Colors.purple,
                            primary: Colors.pinkAccent.shade100,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, "/recoveryPassword");
                          },
                        ),
                        ElevatedButton(
                          child: Text(
                            'Criar Conta',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            onPrimary: Colors.white,
                            shadowColor: Colors.purple,
                            primary: Colors.pinkAccent.shade100,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, "/createAccount");
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

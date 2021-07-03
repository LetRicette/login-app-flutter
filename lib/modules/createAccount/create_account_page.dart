import 'package:flutter/material.dart';
import 'package:login/modules/shared/widgets/input_text/input_text_widget.dart';

class CreateAccountPage extends StatefulWidget {
  CreateAccountPage({Key? key}) : super(key: key);

  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
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
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade600,
          elevation: 0,
          title: Text('Crie sua conta'),
        ),
        body: Container(
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Insira seus dados:',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              Form(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    InputTextWidget(
                        label: "Nome",
                        validator: (value) => value!.isEmpty ? "Vazio" : null,
                        onChange: (value) {
                          //controller.onChanged(email: value);
                        }),
                    SizedBox(
                      height: 10,
                    ),
                    InputTextWidget(
                        label: "Email",
                        validator: (value) => value!.isEmpty ? "Vazio" : null,
                        onChange: (value) {
                          //controller.onChanged(senha: value);
                        }),
                    SizedBox(
                      height: 10,
                    ),
                    InputTextWidget(
                        label: "Data de Nascimento",
                        validator: (value) => value!.isEmpty ? "Vazio" : null,
                        onChange: (value) {
                          //controller.onChanged(senha: value);
                        }),
                    SizedBox(
                      height: 10,
                    ),
                    InputTextWidget(
                        label: "Senha",
                        obscureText: true,
                        validator: (value) => value!.isEmpty ? "Vazio" : null,
                        onChange: (value) {
                          //controller.onChanged(email: value);
                        }),
                    SizedBox(
                      height: 10,
                    ),
                    InputTextWidget(
                        label: "Redigite a Senha",
                        obscureText: true,
                        validator: (value) => value!.isEmpty ? "Vazio" : null,
                        onChange: (value) {
                          //controller.onChanged(senha: value);
                        }),
                  ],
                ),
              )),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                child: Text(
                  'Criar',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    onPrimary: Colors.purple,
                    shadowColor: Colors.purple,
                    primary: Colors.white,
                    padding:
                        EdgeInsets.symmetric(horizontal: 50, vertical: 10)),
                onPressed: () {
                  // if (controller.login()) {
                  //   Navigator.pushReplacementNamed(context, "/home");
                  // }
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:login/modules/shared/widgets/input_text/input_text_widget.dart';

class RecoveryPasswordPage extends StatefulWidget {
  RecoveryPasswordPage({Key? key}) : super(key: key);

  @override
  _RecoveryPasswordPageState createState() => _RecoveryPasswordPageState();
}

class _RecoveryPasswordPageState extends State<RecoveryPasswordPage> {
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
            title: Text('Recupere sua senha aqui'),
          ),
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Digite seu email para recuperar a sua senha',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Form(
                        child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        children: [
                          InputTextWidget(
                              label: "Email",
                              validator: (value) =>
                                  value!.isEmpty ? "Vazio" : null,
                              onChange: (value) {
                                //controller.onChanged(email: value);
                              }),
                        ],
                      ),
                    )),
                    ElevatedButton(
                      child: Text(
                        'Enviar email',
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
                              horizontal: 50, vertical: 10)),
                      onPressed: () {
                        // if (controller.login()) {
                        //   Navigator.pushReplacementNamed(context, "/home");
                        // }
                      },
                    ),
                  ]),
            ),
          ),
        ));
  }
}

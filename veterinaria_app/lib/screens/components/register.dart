import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController conpassword = TextEditingController();
  bool passwordVisible = false;
  bool agree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset('assets/images/logoBlanco.png'),
          )
        ],
        title: const Text('Registrate'),
        backgroundColor: const Color.fromARGB(255, 65, 3, 141),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Crea una cuenta para empezar a usar la app',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Nombre',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: ('Nombre completo'),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text('Correo electronico',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: ('Direccion de correo'),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text('Contrasena',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      TextField(
                        obscureText: passwordVisible,
                        decoration: InputDecoration(
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                passwordVisible = !passwordVisible;
                              });
                            },
                            child: Icon(passwordVisible
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: ('Contrasena'),
                        ),
                      ),
                      const Text(
                        'La contrasena debe contener caracteres, numeros y simbolos con un minimo de 6 caracteres.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: agree,
                              shape: const CircleBorder(),
                              onChanged: (value) {
                                setState(() {
                                  agree = value ?? false;
                                });
                              }),
                          SizedBox(
                            width: 300,
                            child: RichText(
                              text: TextSpan(
                                  text: 'Al registrarme, acepto los',
                                  style: DefaultTextStyle.of(context).style,
                                  children: const [
                                    TextSpan(
                                      text: ' terminos y condiciones',
                                      style: TextStyle(color: Colors.red),
                                    ),
                                    TextSpan(text: ' y la'),
                                    TextSpan(
                                        text: ' politica de privacidad',
                                        style: TextStyle(color: Colors.red))
                                  ]),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                        width: 300,
                        child: MaterialButton(
                          color: const Color.fromARGB(255, 103, 165, 105),
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: const Text(
                            'Crear Cuenta',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Ya tienes cuenta?',
                            style: TextStyle(color: Colors.black),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/login');
                              },
                              child: const Text(
                                'Iniciar sesion',
                                style: TextStyle(color: Colors.red),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

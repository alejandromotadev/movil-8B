import 'package:flutter/material.dart';
import '../home.dart';

class OnLogin extends StatefulWidget {
  const OnLogin({Key? key}) : super(key: key);

  @override
  State<OnLogin> createState() => _OnLoginState();
}

class _OnLoginState extends State<OnLogin> {

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
        title: const Text('Iniciar sesion'),
        backgroundColor: const Color.fromARGB(255, 65, 3, 141),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: LayoutBuilder(
            builder:
                (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: viewportConstraints.maxHeight,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 300),
                    child: Column(
                      children: [
                        const Padding(
                          padding:  EdgeInsets.only(bottom: 20),
                          child: TextField(
                      
                            decoration:  InputDecoration(
                              hintText: ('email'),
                              prefixIcon: Icon(Icons.email, color: Colors.black)
                            ),
                          ),
                        ),
                         const TextField(
                          decoration:  InputDecoration(
                            hintText: ('password'),
                              prefixIcon: Icon(Icons.lock, color: Colors.black)
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            MaterialButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, '/recover_password');
                                },
                                child: const Text(
                                  'Olvide mi contrasena',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 11),
                                )),
                          ],
                        ),
                        SizedBox(
                          width: 200,
                          child: RawMaterialButton(
                            fillColor: Colors.lightBlue,
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)
                            ),
                            onPressed: () async {

                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const HomeScreen()));
                            },
                            child: const Text("Iniciar Sesion", style: TextStyle(color: Colors.white),),),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

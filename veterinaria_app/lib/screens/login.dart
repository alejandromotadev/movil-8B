import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:veterinaria_app/screens/components/on_login.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: _initializeFirebase(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return const OnLogin();
            }
            if (snapshot.hasError) {
              print('error');
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}

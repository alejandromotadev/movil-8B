import 'package:flutter/material.dart';
import '../../../models/user_model.dart';

class OnHomeScreen extends StatefulWidget {
  // final UserModel user;
  // OnHomeScreen({required this.user, userCredential});
  @override
  State<OnHomeScreen> createState() => _OnHomeScreenState();
}

class _OnHomeScreenState extends State<OnHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("welcome"),
          ],
        ),
      ),
    );
  }
}

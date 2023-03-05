import 'package:flutter/material.dart';
import 'package:veterinaria_app/screens/components/on_home.dart';

import '../models/user_model.dart';

class HomeScreen extends StatelessWidget {
  final UserModel user;
  HomeScreen({required this.user});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnHomeScreen(user: user),
    );
  }
}

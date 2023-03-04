import 'package:flutter/material.dart';

class OnHomeScreen extends StatefulWidget {
  const OnHomeScreen({Key? key}) : super(key: key);

  @override
  State<OnHomeScreen> createState() => _OnHomeScreenState();
}

class _OnHomeScreenState extends State<OnHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('on home screen'),
      ),
    );
  }
}

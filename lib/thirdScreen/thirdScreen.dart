import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Screen'),
      ),
      body: Center(
          child: ElevatedButton(
        child: Text('Go to Second Screen'),
        onPressed: () {
          Navigator.pop(context);
        },
      )),
    );
  }
}

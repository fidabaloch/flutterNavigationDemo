import "package:flutter/material.dart";
import "../constants/constants.dart";

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String name = "Data from Second Screen";
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text("Back to Home Screen"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            ElevatedButton(
              child: Text("Go to Third Screen"),
              onPressed: () {
                Navigator.pushNamed(context, '/third', arguments: name);
              },
            ),
          ],
        ),
      ),
    );
  }
}

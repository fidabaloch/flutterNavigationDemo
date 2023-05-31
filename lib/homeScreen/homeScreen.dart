import "package:flutter/material.dart";

import "../constants/constants.dart";

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('Second Screen'),
                onTap: () {
                  Navigator.pushNamed(context, '/second');
                },
              ),
              ListTile(
                title: const Text('Third Screen'),
                onTap: () {
                  Navigator.pushNamed(context, '/third');
                },
              ),
              ListTile(
                title: const Text('Item 3'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text(
                  'Item 4',
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Go to Second Screen'),
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.alarm, color: Colors.black),
              label: 'Alarm',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business, color: Colors.black),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school, color: Colors.black),
              label: 'School',
            ),
          ],
          selectedItemColor: IconColor,
        ));
  }
}

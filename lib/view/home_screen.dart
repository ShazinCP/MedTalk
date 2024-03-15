import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 194, 221, 240),
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text("Home"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Card(
              color: Colors.blue[300],
              child:  const ListTile(
                title: Text(
                  "Hello World",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          );
        },
        itemCount: 5,
      ),
    );
  }
}

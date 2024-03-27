import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 210, 227, 240),
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Card(
              color: Colors.blue[500],
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

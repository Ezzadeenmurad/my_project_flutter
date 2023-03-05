import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Floatingbutoon extends StatefulWidget {
  const Floatingbutoon({super.key});

  @override
  State<Floatingbutoon> createState() => _FloatingbutoonState();
}

class _FloatingbutoonState extends State<Floatingbutoon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Add"),
        icon: const Icon(
          Icons.add,
          size: 30,
        ),
        onPressed: () {

        },
        backgroundColor: const Color.fromARGB(255, 92, 100, 206),
        splashColor: const Color.fromARGB(255, 216, 219, 35),
        foregroundColor: Colors.red,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_project_flutter/floatingbutoon.dart';
import 'package:my_project_flutter/progressIndicator.dart';
import 'package:my_project_flutter/slider.dart';
import 'package:my_project_flutter/snackbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  dynamic txt;
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    List Screens = ['Sliders', 'progressIndicator', 'Snackbar',];
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("Home Screen")), actions: [
        PopupMenuButton(
          icon: const Icon(Icons.menu),

          color: Colors.grey,
          itemBuilder: (context) {
            return Screens.map((Screen) {
              return PopupMenuItem(value: Screen, child: Text(Screen));
            }).toList();
          },
          onCanceled: () {
            setState(() {
              txt = 'canceld';
            });
          },
          onSelected: (value) {
            switch (value) {
              case 'Sliders':
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Sliders()));
                break;
              case 'progressIndicator':
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const progressIndicator()));
                break;
              case 'Snackbar':
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Snackbar()));
                break;
            }
          },
        )
      ]),
      body: Container(
        child: Floatingbutoon(),
      ),
    );
  }
}

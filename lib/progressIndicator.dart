import 'package:flutter/material.dart';

class progressIndicator extends StatefulWidget {
  const progressIndicator({super.key});

  @override
  State<progressIndicator> createState() => _progressIndicatorState();
}

class _progressIndicatorState extends State<progressIndicator> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Colors.blue),
            strokeWidth: 5,
            value:.50,
         ),
       ),
    );
  }
}
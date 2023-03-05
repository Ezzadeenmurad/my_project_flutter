import 'package:flutter/material.dart';

class Snackbar extends StatefulWidget {
  const Snackbar({super.key});

  @override
  State<Snackbar> createState() => _SnackbarState();
}

class _SnackbarState extends State<Snackbar> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(),
       body: Center(
         child: ElevatedButton(onPressed: (){
           final snackBar = SnackBar(
             backgroundColor: Colors.red,
             action: SnackBarAction(
               label: "Done",
               onPressed: (){},
             ),
             content: const Text("Not connect"),
             duration: const Duration(seconds: 5),);
           ScaffoldMessenger.of(context).showSnackBar(snackBar);
         },
          child: const Text("click here")),
       ),
    );
  }
}
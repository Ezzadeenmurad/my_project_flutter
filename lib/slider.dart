import 'package:flutter/material.dart';

class Sliders extends StatefulWidget {
  const Sliders({super.key});

  @override
  State<Sliders> createState() => _SliderState();
}

class _SliderState extends State<Sliders> {
 var _sliderval = 10.0;
  @override
  Widget build(BuildContext context) {
    //var _val = 0.0;
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      body: Column(
        children: [
          Slider(
              min: 0.0,
              max: 100.0,
            //  activeColor: Colors.red,
            //  inactiveColor: Colors.green,
              value: _sliderval,
              onChanged: (val) {
                setState(() {
                  _sliderval = val;
                });
              }),
        ],
      ),
    );
  }
}

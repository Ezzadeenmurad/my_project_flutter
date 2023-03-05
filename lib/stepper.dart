import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

// ignore: camel_case_types
class stepper extends StatefulWidget {
  const stepper({super.key});

  @override
  State<stepper> createState() => _stepperState();
}
// ignore: camel_case_types
class _stepperState extends State<stepper> {
  // ignore: non_constant_identifier_names
  int CurrentStep = 0;
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(),
      body: Stepper(
          currentStep: CurrentStep,
          onStepContinue: (() {
            if (CurrentStep == 0) {
              setState(() {
                CurrentStep += 1;
              });
            }
          }),
          onStepCancel: (() {
            if (CurrentStep > 0) {
              setState(() {
                CurrentStep -= 1;
              });
            }
          }),
          onStepTapped: ((int value) {
            setState(() {
              CurrentStep = value;
            });
          }),
          // controlsBuilder: controlsBuilder,
          steps: const [
            Step(
                title: Text('step 1'),
                 content: Text('This is the first Step')
                 ),
           
            Step(
                title: Text('step 2'),
                content: Text('This is the second Step')),
            Step(
                title: Text('step 3'),
                 content: Text('This is the third Step')),
          ]),
    );
  }
}

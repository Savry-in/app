import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProgressBar extends StatelessWidget {
  final int totalSteps;
  final int currentStep;
  const ProgressBar({
    super.key,
    required this.totalSteps,
    required this.currentStep,
  });

  @override
  Widget build(BuildContext build) {
    final int completed = currentStep.clamp(0,totalSteps);
    final int remaining = (totalSteps-completed).clamp(0,totalSteps);
    return Row(
      children: [
        Expanded(flex: completed,
        child: Container(
          height: 12,
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(6),

          ),
        ),),
        Expanded(flex: remaining,
        child: Container(
          height: 12,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(6),
          ),
        ),),
      ],

    );


  }
}

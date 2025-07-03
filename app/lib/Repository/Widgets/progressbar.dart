import 'package:flutter/cupertino.dart';

class 	ProgressBar extends StatelessWidget {
  final int totalSteps;
  final int currentStep;
  const 	ProgressBar({
    super.key,
    required this.totalSteps,
    required this.currentStep,
  });

  @override
  Widget build(BuildContext build) {
    return Row(
      children: List.generate(totalSteps, (index) {
        bool isActive = index < currentStep;
        return Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 4),
            height: 6,
            decoration: BoxDecoration(
              color: isActive ? Color(0xFF8B59BB) : Color(0xFFD9D9D9),
              borderRadius: BorderRadius.circular(3),
            ),
          ),
        );
      }),
    );
  }
}

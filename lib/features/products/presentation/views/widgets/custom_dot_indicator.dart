import 'package:flutter/material.dart';
import 'package:flutter_second_task/core/utils/colors.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      height: 7,
      width: isActive ? 20 : 7,
      decoration: ShapeDecoration(
        color: isActive ? ktextColor2 : Color(0xffD9D9D9),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}

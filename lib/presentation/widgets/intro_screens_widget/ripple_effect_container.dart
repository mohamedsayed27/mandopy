import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RippleEffectContainer extends StatefulWidget {
  final double radius;
  final AnimationController animationController;
  final Color color;
  const RippleEffectContainer({Key? key, required this.radius, required this.animationController, required this.color}) : super(key: key);

  @override
  State<RippleEffectContainer> createState() => _RippleEffectContainerState();
}

class _RippleEffectContainerState extends State<RippleEffectContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.radius,
      height: widget.radius,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: widget.color,
      ),
    );
  }
}

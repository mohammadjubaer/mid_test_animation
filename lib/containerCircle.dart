import 'package:flutter/material.dart';
import 'dart:async';

class ExpandingCircle extends StatefulWidget {
  final double initialRadius;
  final double finalRadius;
  final Duration delayDuration;
  final Color colors;

  ExpandingCircle({
    required this.initialRadius,
    required this.finalRadius,
    required this.colors,
    this.delayDuration = const Duration(seconds: 2),
  });

  @override
  _ExpandingCircleState createState() => _ExpandingCircleState();
}

class _ExpandingCircleState extends State<ExpandingCircle> {
  late double _radius;

  @override
  void initState() {
    super.initState();
    _radius = widget.initialRadius;

    // Start expanding the circle after the specified delay
    Timer(widget.delayDuration, () {
      setState(() {
        _radius = widget.finalRadius;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        duration: Duration(seconds: 1), // Duration for the radius expansion animation
        width: _radius * 2,
        height: _radius * 2,
        decoration: BoxDecoration(
          color: widget.colors,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
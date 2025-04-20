import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SquareBlue extends StatefulWidget {
  const SquareBlue({super.key});

  @override
  State<StatefulWidget> createState() {
    return AnimatedSquareBlue();
  }
}

class AnimatedSquareBlue extends State<SquareBlue> {
  bool _isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      child: Stack(
        children: [
          Center(
            child: AnimatedContainer(
              decoration: BoxDecoration(color: Colors.blue),
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
              height: _isExpanded ? 400 : 150,
              width: _isExpanded ? 400 : 150,
            ),
          ),
          Center(
            child: AnimatedContainer(
              decoration: BoxDecoration(color: Colors.red),
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
              height: _isExpanded ? 100 : 300,
              width: _isExpanded ? 100 : 300,
            ),
          ),
        ],
      ),
    );
  }
}

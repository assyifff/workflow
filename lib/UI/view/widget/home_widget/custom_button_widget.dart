import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String label;
  final Color textColor;
  final Color bgColor;
  final Color highlightColor;

  const CustomButton({
    Key? key,
    required this.label,
    required this.textColor,
    required this.bgColor,
    required this.highlightColor,
  }) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _isPressed = true;
        });
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      onTapUp: (_) {
        setState(() {
          _isPressed = false;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: _isPressed ? widget.highlightColor : Colors.transparent,
        ),
        child: Center(
          child: Text(
            widget.label,
            style: TextStyle(
              color: widget.textColor,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}

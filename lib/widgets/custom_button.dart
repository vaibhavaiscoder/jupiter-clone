import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPress;
  final Color? backgroundColor;
  final String text;
  final double? size;
  final double borderRadius; // Add a border radius property

  const CustomButton({
    Key? key,
    this.onPress,
    this.size,
    this.backgroundColor,
    required this.text,
    this.borderRadius = 10.0, // Default border radius (you can change this)
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color?>(backgroundColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius), // Set the border radius
          ),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,fontSize: size,
        ),
      ),
    );
  }
}

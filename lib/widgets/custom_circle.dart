import 'package:flutter/material.dart';

class CustomCircleWidget extends StatelessWidget {
  final IconData? icon;
  final Color? backgroundColor;
  final Color? iconColor;
  final double? size;
  final double? borderWidth; // New property for border width
  final Color? borderColor; // New property for border color
  final double? elevation; // New property for elevation

  CustomCircleWidget({
    this.icon,
    this.backgroundColor,
    this.iconColor,
    this.size,
    this.borderWidth, // Initialize border width
    this.borderColor, // Initialize border color
    this.elevation, // Initialize elevation
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation ?? 0.0, // Use provided elevation or default to 0
      shape: CircleBorder(),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor,
          border: Border.all(
            color: borderColor ?? Colors.transparent, // Use provided border color or default to transparent
            width: borderWidth ?? 0, // Use provided border width or default to 0 (no border)
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Shadow color
              blurRadius: 4.0, // Spread of the shadow
              offset: Offset(0, 2), // Offset of the shadow
            ),
          ],
        ),
        child: Center(
          child: Icon(
            icon,
            color: iconColor,
            size: size! * 0.7, // Adjust the icon size as needed
          ),
        ),
      ),
    );
  }
}

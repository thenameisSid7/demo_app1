import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const CustomRaisedButton({
    required this.child,
    required this.bgcolor,
    required this.fgcolor,
    this.borderRadius = 4.0,
    required this.onPressed,
  });
  final Widget child;
  final Color bgcolor;
  final Color fgcolor;
  final double borderRadius;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: bgcolor,
            foregroundColor: fgcolor,
            shape:  RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
            )),
        onPressed: onPressed,
        child: child,
        ),
    );
  }
}

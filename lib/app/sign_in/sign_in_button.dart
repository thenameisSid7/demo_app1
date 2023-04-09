import 'package:demo_app/common_widgets/custom_raised_button.dart';
import 'package:flutter/material.dart';

class SignInButton extends CustomRaisedButton {
  SignInButton({
    required String text,
    required Color bgcolor,
    required Color fgcolor,
    required Color textcolor,
    required VoidCallback onPressed,
  }) : super(
          child: Text(
            text,
            style: TextStyle(color: textcolor, fontSize: 15.0),
          ),
          bgcolor: bgcolor,
          fgcolor: fgcolor,
          onPressed: onPressed,
        );
}

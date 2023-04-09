import 'package:demo_app/common_widgets/custom_raised_button.dart';
import 'package:flutter/material.dart';

class SocialSignInButton extends CustomRaisedButton {
  SocialSignInButton({
    required String text,
    required String assetName,
    required Color bgcolor,
    required Color fgcolor,
    required Color textcolor,
    required VoidCallback onPressed,
  }) : super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(assetName),
              Text(
                text,
                style: TextStyle(color: textcolor, fontSize: 15.0),
              ),
              Opacity(
                opacity: 0.0,
                child: Image.asset(assetName),
                ),
            ],
          ),
          bgcolor: bgcolor,
          fgcolor: fgcolor,
          onPressed: onPressed,
        );
}

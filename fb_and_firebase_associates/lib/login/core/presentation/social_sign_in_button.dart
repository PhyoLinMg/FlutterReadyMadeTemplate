import 'package:flutter/material.dart';

class SocialSignInButton extends StatelessWidget {
  final IconData iconData;
  final Color iconColor;

  final String buttonText;
  final Function() onClicked;
  const SocialSignInButton({
    required this.iconData,
    required this.iconColor,
    required this.buttonText,
    required this.onClicked,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onClicked(),
      child: Row(
        children: [
          Icon(
            iconData,
            color: iconColor,
          ),
          Text(buttonText),
        ],
      ),
    );
  }
}

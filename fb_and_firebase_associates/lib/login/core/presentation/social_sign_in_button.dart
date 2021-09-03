import 'package:flutter/material.dart';

class SocialSignInButton extends StatelessWidget {
  final IconData iconData;
  final Color iconColor;
  final Color buttonColor;
  final String buttonText;
  final Color textColor;
  final Function() onClicked;
  const SocialSignInButton({
    required this.iconData,
    required this.iconColor,
    required this.buttonColor,
    required this.buttonText,
    required this.textColor,
    required this.onClicked,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(buttonColor),
      ),
      onPressed: () => onClicked(),
      child: Row(
        children: [
          Icon(
            iconData,
            color: iconColor,
          ),
          Text(
            buttonText,
            style: TextStyle(color: textColor),
          ),
        ],
      ),
    );
  }
}

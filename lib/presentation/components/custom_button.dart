import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final Function() onTap;
  final IconData icon;
  final Color iconColor;
  final Color color;
  final Color splashColor;
  final double size;

  const RoundButton({
    Key? key,
    required this.onTap,
    required this.icon,
    required this.iconColor,
    required this.color,
    required this.splashColor,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(25.0),
      child: InkWell(
        onTap: onTap,
        splashColor: splashColor,
        borderRadius: BorderRadius.circular(25.0),
        child: SizedBox(
          width: 40.0,
          height: 40.0,
          child: Icon(
            icon,
            color: iconColor,
            size: size,
          ),
        ),
      ),
    );
  }
}

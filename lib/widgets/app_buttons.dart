import 'package:flutter/material.dart';
import 'package:keep_travel/misc/colors.dart';
import 'package:keep_travel/widgets/app_text.dart';

class AppButton extends StatelessWidget {
  final Color color, backgroundColor, borderColor;
  final String? text;
  final IconData? icon;
  final double size;
  final bool isIcon;

  const AppButton({Key? key,
    this.text,
    this.icon,
    this.isIcon = false,
    required this.color,
    required this.backgroundColor,
    required this.size,
    required this.borderColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1.0,
        ),
          color: backgroundColor,
          borderRadius: BorderRadius.circular(15)
      ),
      child: isIcon==false?Center(child: AppText(text: text!, color: color,)): Center(child: Icon(icon, color: color,)) ,
    );
  }
}

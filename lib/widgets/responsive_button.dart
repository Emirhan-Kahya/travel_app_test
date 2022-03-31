import 'package:flutter/material.dart';
import 'package:keep_travel/misc/colors.dart';
import 'package:keep_travel/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  final bool? isResponsive;
  final double? width;
  final String? btext;

  const ResponsiveButton(
      {Key? key, this.width = 120, this.isResponsive = false, this.btext = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive == true ? double.maxFinite : width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor,
        ),
        child: Row(
          mainAxisAlignment: isResponsive == true
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            isResponsive == true
                ? Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: AppText(
                      text: btext.toString(),
                      color: Colors.white,
                    ),
                  )
                : Container(),
            Image.asset("assets/images/button-one.png"),
          ],
        ),
      ),
    );
  }
}

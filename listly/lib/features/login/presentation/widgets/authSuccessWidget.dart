import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:listly/core/utils/themes/appTextThemes.dart';

class AuthStateButton extends StatelessWidget {
  final Icon icon;
  final String label;
  final Function onPressed;
  const AuthStateButton({
    Key key,
    this.icon,
    this.label,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Get.theme.primaryColor,
      textTheme: ButtonTextTheme.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          SizedBox(
            width: 10,
          ),
          Text(
            label,
            style: AppTextThemes.btnTextMed,
          ),
        ],
      ),
    );
  }
}

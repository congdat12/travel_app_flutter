import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';

class CustomButton extends StatelessWidget {
   const CustomButton(
      {Key? key,
      required this.content,
      required this.contentColor,
      required this.primaryColor,
      required this.onPress})
      : super(key: key);
  final String? content;
  final Color? primaryColor;
  final Color? contentColor;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: Text(
        // ignore: unnecessary_this
        this.content!,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: contentColor,
        ),
      ),
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
          Radius.circular(77),
        )),
        primary: primaryColor,
        fixedSize:  const Size(354, 50),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {Key? key,
      required this.imgPath,
      required this.content,
      required this.contentColor,
      required this.primaryColor})
      : super(key: key);
  final String? imgPath;
  final String? content;
  final Color? primaryColor;
  final Color? contentColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      label: Text(
        content!,
        style: TextStyle(
            // fontFamily: 'Blinker',
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: contentColor),
      ),
      onPressed: () {},
      icon: Image.asset(imgPath!),
      style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(17)),
          ),
          primary: primaryColor,
          fixedSize: const Size(157, 50),
          padding: const EdgeInsets.symmetric(horizontal: 15)),
    );
  }
}

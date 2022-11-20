import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.content}) : super(key: key);
  final String? content;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        // ignore: unnecessary_this
        this.content!,
        style: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: Colors.white,
        ),
      ),
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
          Radius.circular(77),
        )),
        primary: AppColor.h009,
        fixedSize: const Size(354, 40),
      ),
    );
  }
}

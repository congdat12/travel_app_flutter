import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({Key? key, required this.imgPath}) : super(key: key);
  final String? imgPath;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      label: const Text(
        'Google',
        style: TextStyle(
            // fontFamily: 'Blinker',
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Colors.black),
      ),
      onPressed: () {},
      icon: Image.asset(imgPath!),
      style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(17)),
          ),
          primary: Colors.white,
          fixedSize: const Size(167, 50),
          padding: const EdgeInsets.symmetric(horizontal: 15)),
    );
  }
}

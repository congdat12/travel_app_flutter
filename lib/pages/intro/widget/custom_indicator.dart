import 'package:flutter/material.dart';

import '../../../resources/app_colors.dart';

class CustomIndicator extends StatefulWidget {
  const CustomIndicator({Key? key}) : super(key: key);

  @override
  State<CustomIndicator> createState() => _CustomIndicatorState();
}

class _CustomIndicatorState extends State<CustomIndicator> {
  final bool isActive = true;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 12),
          width: 10,
          decoration: BoxDecoration(
            color: isActive ? AppColor.h0000 : AppColor.h009,
            borderRadius: const BorderRadius.all(Radius.circular(40)),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:travelapp_flutter/resources/app_colors.dart';

class ListItem extends StatelessWidget {
   ListItem({Key? key, required this.image,}) : super(key: key);
  String? image;
  String? title;

  @override
  Widget build(BuildContext context) {
    return Stack(
          children: [
            Container(
            width: 291,
            height: 188,
            decoration:  BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              color: Colors.amberAccent,
              image: DecorationImage(image: AssetImage(image ??''), fit: BoxFit.fill)
            ),
            
          ),
            Positioned(
            left: 18,
            top: 11,
            child: Text( title ??'', style:  const TextStyle(
              color: AppColor.h0xff,
              fontWeight: FontWeight.bold,
              fontSize: 22
            ),),)
          ],
        );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomButton{


  Widget buildButton( String content, String fontFamily, double fontSize,FontWeight fontWeight, Color textColor,
      Color? buttonColor, double cornerRadius, double buttonWidth, double buttonHeight){
    return ElevatedButton(
      onPressed: () {},
      child:  Text(
        content,
        style:  TextStyle(
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          fontSize: fontSize,
          color: textColor,
        ),
      ),
      style: ElevatedButton.styleFrom(
        shape:  RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(cornerRadius),
            )),
        primary:  buttonColor,
        fixedSize:  Size(buttonWidth.w, buttonHeight.h
        ),
      ),
    );
  }
}

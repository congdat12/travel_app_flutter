import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hinText, required this.obcureText}) : super(key: key);
  final String? hinText;
  final bool obcureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade300, blurRadius: 10, offset: Offset.zero),
        ],
      ),
      child: TextField(
        obscureText: obcureText,
        decoration: InputDecoration(
          
          filled: true,
          fillColor: Colors.white,
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          hintText: hinText,
          hintStyle: const TextStyle(
            //fontFamily: 16,
            fontSize: 16,
            color: Color(0xFFD0D0D0),
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

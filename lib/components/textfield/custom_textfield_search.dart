import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextFieldSearch extends StatelessWidget {
  const CustomTextFieldSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black45, blurRadius: 15,offset: Offset(4,8) ),
        ],
      ),
      child: const TextField(
        
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search, color: Colors.grey,),
          
          filled: true,
          fillColor: Colors.white,
          enabledBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          hintText: 'Search',
          hintStyle:  TextStyle(
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
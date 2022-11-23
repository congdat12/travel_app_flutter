import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travelapp_flutter/pages/auth/login/login_page.dart';
import 'package:travelapp_flutter/pages/auth/signup/signup_page.dart';
import 'package:travelapp_flutter/pages/intro/intro_page.dart';

import 'package:travelapp_flutter/pages/intro/widget/content_page_view.dart';

import 'components/button/custom_button.dart';
import 'components/textfield/custom_textfield.dart';
import 'components/textfield/custom_textfield_password.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          //primarySwatch: Colors.red ,
          ),
      home: const LoginPage(),
    );
  }
}

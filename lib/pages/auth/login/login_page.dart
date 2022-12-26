import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:travelapp_flutter/pages/main/home/home_page.dart';

import '../../../components/button/custom_button.dart';
import '../../../components/button/custom_icon_button.dart';
import '../../../components/textfield/custom_textfield.dart';
import '../../../resources/app_colors.dart';
import '../signup/signup_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final TextEditingController userName = TextEditingController();
  TextEditingController passWord = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
        child: Column(
          children: [
            const SizedBox(
              height: 84,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Log in',
                style: TextStyle(
                    color: AppColor.h0000,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: 31,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const CustomIconButton(
                  imgPath: 'assets/icons/google icon 1.png',
                  content: 'Google',
                  contentColor: AppColor.h0000,
                  primaryColor: AppColor.h0xff,
                ),
                const CustomIconButton(
                  imgPath: 'assets/icons/Vector.png',
                  content: 'Facebook',
                  contentColor: AppColor.h0xff,
                  primaryColor: AppColor.h3498,
                ),
              ],
            ),
            const SizedBox(
              height: 37,
            ),
            const Text('Or log in using'),
            const SizedBox(
              height: 87,
            ),
            CustomTextField(
                textEditingController: userName,
                hinText: 'Username',
                obcureText: false),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              hinText: 'Password',
              obcureText: true,
              textEditingController: passWord,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot password',
                  style: TextStyle(color: AppColor.h0000),
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            CustomButton(
              content: 'Login',
              contentColor: AppColor.h69,
              primaryColor: AppColor.h009,
              onPress: () {
                if (userName.text == '123' && passWord.text == '123') {
                  Route route =
                      MaterialPageRoute(builder: (_) => const HomePage());
                  Navigator.of(context).push(route);
                } else {
                  Alert(context: context, title: "WTF", desc: "Tai khoan sai kia ba").show();
                }
              },
            ),
            const Spacer(),
            RichText(
              text: TextSpan(
                  text: 'Dont have an account? ',
                  style: const TextStyle(
                    color: AppColor.h0000,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Sign up',
                      style: const TextStyle(color: AppColor.h009),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Route route =
                              MaterialPageRoute(builder: (_) => SignupPage());
                          Navigator.of(context).push(route);
                        },
                    )
                  ]),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:travelapp_flutter/components/button/custom_button.dart';
import 'package:travelapp_flutter/components/button/custom_icon_button.dart';
import 'package:travelapp_flutter/components/textfield/custom_textfield.dart';
import 'package:travelapp_flutter/resources/app_colors.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Sign up',
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
              const Text('Or Sign up using'),
              const SizedBox(
                height: 37,
              ),
              const CustomTextField(hinText: 'First Name', obcureText: false),
              const SizedBox(
                height: 20,
              ),
              const CustomTextField(hinText: 'Last Name', obcureText: false),
              const SizedBox(
                height: 20,
              ),
              const CustomTextField(hinText: 'First Mail', obcureText: false),
              const SizedBox(
                height: 20,
              ),
              const CustomTextField(
                  hinText: 'First Password', obcureText: true),
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
              const CustomButton(
                content: 'Login',
                contentColor: AppColor.h69,
                primaryColor: AppColor.h009,
              ),
              const SizedBox(
                height: 40,
              ),
              RichText(
                text: const TextSpan(
                    text: 'Already have an account? ',
                    style: TextStyle(
                      color: AppColor.h0000,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Sign in',
                          style: TextStyle(color: AppColor.h009))
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

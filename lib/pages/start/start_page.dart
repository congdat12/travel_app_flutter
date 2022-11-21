import 'package:flutter/material.dart';

import '../../components/button/custom_button.dart';
import '../../resources/app_colors.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/images/img.png',
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: Padding(
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).padding.top + 83),
              child: Column(
                children: [
                  Image.asset('assets/icons/building 1.png'),
                  const SizedBox(
                    height: 11,
                  ),
                  const Text(
                    'PeShop',
                    style: TextStyle(
                        color: AppColor.h0000,
                        fontWeight: FontWeight.bold,
                        fontSize: 46),
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  RichText(
                    text: const TextSpan(
                        text: 'Welcome to peshop',
                        style: TextStyle(color: AppColor.h0000, fontSize: 12),
                        children: [
                          TextSpan(
                            text: '\nBook easy and cheap hotels only on Peshop',
                            style:
                                TextStyle(color: AppColor.h0000, fontSize: 12),
                          )
                        ]),
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: CustomButton(
                      content: 'LOGIN', contentColor: null, primaryColor: null,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Click to continue',
                      style: TextStyle(
                          color: AppColor.h0000, fontWeight: FontWeight.w400),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:travelapp_flutter/components/button/custom_button.dart';
import 'package:travelapp_flutter/pages/auth/login/login_page.dart';
import 'package:travelapp_flutter/pages/auth/signup/signup_page.dart';
import 'package:travelapp_flutter/resources/app_colors.dart';

import '../../models/list_intro_model.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final PageController pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
        child: Column(
          children: [
            SizedBox(
              width: 327,
              height: 327,
              child: PageView.builder(
                controller: pageController,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: Image(
                      image: AssetImage('${model[index].image}'),
                    ),
                  );
                },
                itemCount: model.length,
              ),
            ),
            const SizedBox(height: 51),
            SizedBox(
              width: 120,
              height: 15,
              child: Center(
                child: ListView.separated(
                  physics:
                      const NeverScrollableScrollPhysics(), // tat cuon listview
                  scrollDirection: Axis.horizontal,
                  itemCount: model.length,
                  shrinkWrap: true, //lay theo kich thuoc con
                  itemBuilder: (context, index) {
                    // print('currentindex: $currentIndex');
                    return buildIndicator(index);
                  },
                  separatorBuilder: ((context, index) {
                    return const SizedBox(width: 5.0);
                  }),
                ),
              ),
            ),
            const SizedBox(height: 51),
            const Center(
              child: Text(
                'Plan your trip',
                style: TextStyle(
                    color: AppColor.h0000,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            const SizedBox(height: 30),
            const Center(
              child: Text(
                'Custom and fast planning\n with a low price',
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
            CustomButton(
              content: 'Login',
              contentColor: AppColor.h0xff,
              primaryColor: AppColor.h009,
              onPress: () {
                Route route =
                    MaterialPageRoute(builder: (_) => const LoginPage());
                Navigator.of(context).push(route);
              },
            ),
            const SizedBox(height: 19),
            CustomButton(
              content: 'Create Account',
              contentColor: AppColor.h0000,
              primaryColor: AppColor.h0xff,
              onPress: () {
                Route route =
                    MaterialPageRoute(builder: (_) => const SignupPage());
                Navigator.of(context).push(route);
              },
            ),
            const SizedBox(height: 15)
          ],
        ),
      ),
    );
  }

  Widget buildIndicator(int index) {
    return Container(
      // margin: const EdgeInsets.only(left: 10),
      width: 15,
      decoration: BoxDecoration(
        color: currentIndex == index ? AppColor.h0000 : AppColor.h009,
        borderRadius: const BorderRadius.all(Radius.circular(50)),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:travelapp_flutter/components/button/custom_button.dart';
import 'package:travelapp_flutter/resources/app_colors.dart';

class CustomPageView extends StatefulWidget {
  const CustomPageView({Key? key}) : super(key: key);

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    int currentIndex = 0;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          children: [
            SizedBox(
              width: 327,
              height: 327,
              child: PageView(
                controller: pageController,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                
                },
                children: const <Widget>[
                  Center(
                    child: Image(
                      width: 240,
                      height: 240,
                      image: AssetImage('assets/images/Frame 1.png'),
                    ),
                  ),
                  Center(
                    child: Image(
                      width: 240,
                      height: 240,
                      image: AssetImage('assets/images/Frame 1.png'),
                    ),
                  ),
                  Center(
                    child: Image(
                      width: 240,
                      height: 240,
                      image: AssetImage('assets/images/Frame 1.png'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 51,
            ),
            Center(
              child: SizedBox(
                width: 120,
                height: 15,
                child: ListView.builder(
                    padding: const EdgeInsets.only(right: 15, left: 15),
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      
                      return buildIndicator(index == 0);
                    }),
              ),
            ),
            const SizedBox(
              height: 51,
            ),
            const Center(
              child: Text(
                'Plan your trip',
                style: TextStyle(
                    color: AppColor.h0000,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text('Custom and fast planning\n with a low price'),
            ),
            const Spacer(),
             CustomButton(
              content: 'Login',
              contentColor: AppColor.h0xff,
              primaryColor: AppColor.h009, onPress: () {  },
            ),
            const SizedBox(
              height: 19,
            ),
             CustomButton(
              content: 'Create Account',
              contentColor: AppColor.h0000,
              primaryColor: AppColor.h0xff, onPress: () {  },
            ),
            const SizedBox(
              height: 29,
            )
          ],
        ),
      ),
    );
  }

  Widget buildIndicator(bool isActive) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      width: 15,
      decoration: BoxDecoration(
        color: isActive ? AppColor.h0000 : AppColor.h009,
        borderRadius: const BorderRadius.all(Radius.circular(50)),
      ),
    );
  }
}

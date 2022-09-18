import 'package:flutter/material.dart';
import 'package:travelapp_flutter/components/widgets/custom_button.dart';
import 'package:travelapp_flutter/resources/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            //padding: EdgeInsets.only(top: 715.h),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/img.png'),
                    fit: BoxFit.fitWidth
                )
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 570.h,right: 30.w,left: 30.w),
          child: CustomButton().buildButton('Lets Started', 'Roboto', 16, FontWeight.w700, AppColor.h0xff, null, 30, 354, 50),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:travelapp_flutter/pages/main/home/Explore/widget/best_deal.dart';
import 'package:travelapp_flutter/pages/main/home/Explore/widget/luxury.dart';
import 'package:travelapp_flutter/resources/app_colors.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: const Padding(
          padding: EdgeInsets.only(left: 25.0,),
          child: Icon(
            Icons.arrow_back_ios_new,
            color: AppColor.h0000,
          ),
        ),
        actions: [
          Image.asset('assets/icons/heart.png'),
          const Icon(
            Icons.settings,
            color: AppColor.h0000,
          ),
          const SizedBox(
            width: 25.0,
          )
        ],
        title: const Text(
          'Explore',
          style: TextStyle(
              color: AppColor.h0000, fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      body: Column(
        children: const[
            Luxury(),
            Expanded(child: BestDeal())
        ],
      ),
    );
  }
}

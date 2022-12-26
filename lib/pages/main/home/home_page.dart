import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travelapp_flutter/components/button/custom_button.dart';
import 'package:travelapp_flutter/pages/main/home/detail%20room/detail_room.dart';
import 'package:travelapp_flutter/pages/main/home/widget/list_best_deal.dart';
import 'package:travelapp_flutter/pages/main/home/widget/list_items.dart';
import 'package:travelapp_flutter/resources/app_colors.dart';

import '../../../components/textfield/custom_textfield_search.dart';
import '../../../models/list_best_deal_model.dart';
import '../../../models/list_home_model.dart';
import '../../../models/list_intro_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController pageController;
  int currentIndex = 0;
  int currentPage = 0;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    pageController = PageController();

    timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (currentPage < 2) {
        currentPage++;
      } else {
        currentPage = 0;
      }

      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 300), curve: Curves.ease);
      setState(() {});

      //print('init state');
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: 533,
                  height: 533,
                  child: PageView.builder(
                    controller: pageController,
                    onPageChanged: (index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return Center(
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  '${homeModel[index].image}',
                                ),
                                fit: BoxFit.fill),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80, right: 15, left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const CustomTextFieldSearch(),
                      //const Spacer(),
                      const SizedBox(height: 200),
                      ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            final home = homeModel[index];
                            return Visibility(
                              visible: currentIndex == index,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    home.name!,
                                    style: const TextStyle(
                                        color: AppColor.h0xff,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                    maxLines: 1,
                                  ),
                                  Text(
                                    home.subName!,
                                    style: const TextStyle(
                                        color: AppColor.h0xff,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                    maxLines: 1,
                                  ),
                                ],
                              ),
                            );
                          },
                          itemCount: homeModel.length),

                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'South America',
                          style: TextStyle(color: AppColor.h0xff, fontSize: 20),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: CustomButton(
                              content: 'View Detail',
                              contentColor: AppColor.h0xff,
                              primaryColor: AppColor.h009,
                              onPress: () {},
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: SizedBox(
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
                          ),
                        ],
                      ),
                      // const SizedBox(
                      //   height: 18,
                      // )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                'Popular Destination',
                style: TextStyle(
                    color: AppColor.h0000,
                    fontWeight: FontWeight.bold,
                    fontSize: 26),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              padding: const EdgeInsets.only(left: 22.0),
              height: 214,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: homeModel.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListItem(
                    image: '${homeModel[index].image}',
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 22,
                  );
                },
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Best Deal',
                style: TextStyle(
                    color: AppColor.h0000,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              //width: 354,
              height: 158,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: bestDealModel.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DeatailRoom(bestDeal: bestDealModel[index],)),
                      );
                    },
                    child: ListBestDeal(
                      cost: bestDealModel[index].cost,
                      image: bestDealModel[index].image,
                      location: bestDealModel[index].location,
                      rating: bestDealModel[index].rating,
                      subTittle: bestDealModel[index].subTittle,
                      title: bestDealModel[index].title,
                    ),
                  );
                },
                separatorBuilder: (_, __) {
                  return const SizedBox(
                    width: 22,
                  );
                },
              ),
            ),
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

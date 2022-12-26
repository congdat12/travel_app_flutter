import 'package:flutter/material.dart';

import 'package:readmore/readmore.dart';
import 'package:travelapp_flutter/pages/main/home/detail%20room/widget/hoteldetail.dart';
import 'package:travelapp_flutter/pages/main/home/detail%20room/widget/review.dart';
import 'package:travelapp_flutter/pages/main/home/detail%20room/widget/review_summary.dart';
import 'package:travelapp_flutter/resources/app_colors.dart';

import '../../../../models/list_best_deal_model.dart';


class DeatailRoom extends StatelessWidget {
  final BestDealModel bestDeal;
  const DeatailRoom({Key? key, required this.bestDeal, }) : super(key: key);
  
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                const SizedBox(
                  width: double.infinity,
                  height: 200.0,
                  child: Image(
                      image: AssetImage('assets/images/Rectangle 15.png')),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 45.0, right: 30.0, left: 30.0,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.arrow_back_rounded,
                        color: AppColor.h0xff,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image(
                          image: AssetImage(
                            'assets/icons/heart.png',
                          ),
                          color: AppColor.h009,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0,left: 20, right: 20, bottom: 20 ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                         Text(
                          bestDeal.title ??'',
                          style: const TextStyle(
                            color: AppColor.h0000,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 7),
                        Row(
                          children: [
                            //  Text(
                            //   bestDeal.subTittle?? '',
                            //   style: const TextStyle(fontSize: 9),
                            //   overflow: TextOverflow.clip,
                            // ),
                            Image.asset(
                              'assets/icons/location-sign 1.png',
                              // width: 14,
                            ),
                             Text(
                              bestDeal.location??'',
                              style: const TextStyle(fontSize: 9),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children:  [
                      Text(
                        '\$ ${bestDeal.cost}',
                        style:
                            const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      const Text('Pernight', style: TextStyle(fontSize: 12),)
                    ],
                  )
                ],
              ),
            ),
            const Padding(
              padding:  EdgeInsets.only(left: 20, right: 20),
              child:  Divider(
                thickness: 4,
              ),
            ),
             const Padding(
               padding:  EdgeInsets.only(left:20.0, right: 20.0, top: 30.0, bottom: 10.0),
               child: Text('Hotel details'),
             ),
             Padding(
              padding:  const EdgeInsets.only(left : 20.0, right: 20.0),
              child:  ReadMoreText(
                bestDeal.hotelDetail ?? '',
                trimLines: 2,
                // colorClickableText: Colors.pink,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Read more',
                moreStyle: const TextStyle(fontSize: 14,color: AppColor.h009),
              ),
            ),
            const SizedBox(height: 30),
            ReviewSummary(rating: bestDeal.rating??0.0,),
            
            Padding(
              padding: const EdgeInsets.only(top:20.0, left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Hotel details', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  Text('View all', style: TextStyle(fontSize: 12, color: AppColor.h009  ),)
                ],
              ),
              
            ),
            const HotelDetail(),
            const Padding(
              padding:  EdgeInsets.only(left : 20.0, right: 20.0, bottom: 20.0),
              child:  Divider(
                thickness: 4,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left : 20.0, right: 20.0, bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Review (33)', style: TextStyle(
                    color: AppColor.h0000,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),),
                  Text('View All', style: TextStyle(
                    color: AppColor.h009,
                    fontSize: 12,
                  ),),
                ],
              ),
              
            ),
            const Padding(
              padding:  EdgeInsets.only(left : 20.0, right : 20.0),
              child: Divider(
                thickness: 4,
              ),
            ),
            const Review(),
            
            

            
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:travelapp_flutter/resources/app_colors.dart';

import '../../../../../models/list_best_deal_model.dart';

class BestDeal extends StatelessWidget {
  const BestDeal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Padding(
          padding:
              const EdgeInsets.only(right: 32.0, left: 18.0, bottom: 25.0),
          child: Row(
            children: const [
              Expanded(
                child: Text(
                  'Best Deals',
                  style: TextStyle(
                      color: AppColor.h0000,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              
              Text(
                'Filter',
                style: TextStyle(
                    color: AppColor.h0000,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold),
              ),
              Icon(Icons.filter_alt_off_rounded)
            ],
          ),
        ),
        Expanded(
          // width: double.infinity,
          //height: double.infinity,
          child: ListView.separated(
              shrinkWrap: true,
              // physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          width: 378,
                          height: 210,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                image: AssetImage(
                                  bestDealModel[index].image!,
                                ),
                                fit: BoxFit.fill),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 12.0, right: 12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    bestDealModel[index].title!,
                                    style: const TextStyle(
                                        color: AppColor.h0000,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '\$${bestDealModel[index].cost!}',
                                    style: const TextStyle(
                                        color: AppColor.h0000,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    bestDealModel[index].subTittle!,
                                    style: const TextStyle(fontSize: 9.0),
                                  ),
                                  Image.asset(
                                      'assets/icons/location-sign 1.png'),
                                  Text(
                                    bestDealModel[index].location!,
                                    style: const TextStyle(fontSize: 9.0),
                                  ),

                                  //
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 12.0, top: 8.0, bottom: 9.0),
                          child: RatingBar.builder(
                            itemSize: 12,
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 1.0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (_, __) {
                return const SizedBox(
                  height: 10
                );
              },
              itemCount: bestDealModel.length),
        )
      ],
    );
  }
}

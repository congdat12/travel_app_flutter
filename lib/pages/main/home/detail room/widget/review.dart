import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:travelapp_flutter/models/list_best_deal_model.dart';
import 'package:travelapp_flutter/models/list_review.model.dart';
import 'package:travelapp_flutter/resources/app_colors.dart';

class Review extends StatelessWidget {
  const Review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
       Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0),
          child: ListView.separated(
               physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 35,
                          height: 35,
                          child: CircleAvatar(
                              backgroundImage:
                                  NetworkImage(bestDealModel[index].userAvatar??'')),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              bestDealModel[index].userNameReview ??'',
                              style: const TextStyle(
                                  color: AppColor.h0000,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(bestDealModel[index].userTime??''),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text('Rating'),
                            RatingBar.builder(
                              itemSize: 15,
                              initialRating: 2,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 1.0),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: AppColor.h009,
                              ),
                              onRatingUpdate: (rating) {
                               
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    Text(reviewModel[index].content!),
                    const SizedBox(
                      height: 23,
                    ),
                    const Text('Reply'),
                    const Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 17.0, bottom: 20.0),
                      child: Divider(
                        thickness: 4,
                      ),
                    )
                  ],
                );
              },
              separatorBuilder: (_, __) {
                return const SizedBox(
                  height: 10,
                );
              },
              itemCount: reviewModel.length));
    
  }
}

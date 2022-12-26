import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:travelapp_flutter/resources/app_colors.dart';

import '../../../../../models/review_summary_model.dart';

class ReviewSummary extends StatelessWidget {
  const ReviewSummary({Key? key, required this.rating,}) : super(key: key);
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.only(left:10.0, right: 10.0),
          child: Card(
            elevation: 2.9,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 15.0),
                  child: Row(
                    children: [
                       Text(
                        '${rating}',
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      Column(
                        children: [
                          const Text('Review Summary'),
                          RatingBar.builder(
                            itemSize: 20,
                            initialRating: 2,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left : 15.0, bottom: 15.0),
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                      //scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        final as = listSummaryModel[index];
                        return Row(
                          children: [
                            Text('${as.range!.round()}'),
                            const Icon(
                              Icons.star,
                              color: AppColor.h009,
                            ),
                            const SizedBox(width: 15),
                            Flexible(
                              flex: as.value!.round(),
                              fit: FlexFit.tight,
                              child: Container(
                                // width: as.value,

                                color: AppColor.h009,
                                child: const SizedBox(
                                  height: 10.0,
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 100 - as.value!.round(),
                              fit: FlexFit.tight,
                              child: Container(
                                // width: as.value,

                                color: Colors.transparent,
                                child: const SizedBox(
                                  height: 10.0,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (_, __) {
                        return const SizedBox(height: 10.0);
                      },
                      itemCount: listSummaryModel.length),
                ),
              ],
            ),
          ),
        );
  }
}

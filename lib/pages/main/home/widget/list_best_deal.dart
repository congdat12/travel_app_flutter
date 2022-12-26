import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:travelapp_flutter/resources/app_colors.dart';

class ListBestDeal extends StatelessWidget {
  const ListBestDeal(
      {Key? key,
      required this.image,
      required this.title,
      required this.subTittle,
      required this.location,
      required this.cost,
      required this.rating})
      : super(key: key);
  final String? image;
  final String? title;
  final String? subTittle;
  final String? location;
  final double? cost;
  final double? rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 154,
      width: 350,
      margin: const EdgeInsets.only(bottom: 10.0,left: 18.0,),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 10,
              offset: Offset(4, 8),
            )
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30), bottomLeft: Radius.circular(30)),
            child: Image(
              image: AssetImage(image!),
              // height: 154.0,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            // flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 10.0, top: 8.0,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    title!,
                    style: const TextStyle(
                      color: AppColor.h0000,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),

                    //textAlign: TextAlign.right,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    subTittle!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Image(
                        width: 10.0,
                        height: 10.0,
                        image: AssetImage('assets/icons/location-sign 1.png'),
                      ),
                      Text(
                        location ?? '',
                        style: const TextStyle(fontSize: 9.0),
                      ),
                      const Spacer(),
                      Text(
                        '$cost \$',
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  const Align(
                    alignment: Alignment.bottomRight,
                    child: Text('Per Night'),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RatingBar.builder(
                      initialRating: rating!,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemSize: 15,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        
                      },
                    ),
                    
                  ),
                  const SizedBox(height: 6,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

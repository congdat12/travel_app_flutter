import 'package:flutter/material.dart';

import 'package:travelapp_flutter/resources/app_colors.dart';

class Luxury extends StatelessWidget {
  const Luxury({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: const EdgeInsets.only(left: 20),
        color: const Color(0xffDFE6E9),
        height: 149,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 250,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        )),
                  ),
                ),
                const SizedBox(width: 15),
                SizedBox(
                  width: 50,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Icon(Icons.search),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.h009,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(10),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    Text('Flight Date'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '13 Jul - 18 Jul',
                      style: TextStyle(
                          color: AppColor.h0000,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const VerticalDivider(
                  thickness: 4,
                  color: AppColor.h0000,
                ),
                Column(
                  children: const [
                    Text('Number of Person'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '1 Room - 2 Person',
                      style: TextStyle(
                          fontSize: 16,
                          color: AppColor.h0000,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                
              ],
            )
          ],
        ),
      );

  }
}

import 'package:flutter/material.dart';
import 'package:travelapp_flutter/components/button/custom_button.dart';
import 'package:travelapp_flutter/components/textfield/custom_textfield.dart';
import 'package:travelapp_flutter/resources/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/image 1.png'),
                            fit: BoxFit.fill)),
                  ),
                  Column(
                    children: const [
                      CustomTextField(hinText: 'Search', obcureText: false),
                      Text('Cafe Town'),
                      Text('alo ronaldo'),
                      // Row(
                      //   children: [],
                      // ),
                    ],
                  )
                ],
              )),
          Expanded(
            flex: 1,
            child: Text('data'),
          )
        ],
      ),
    );
  }
}

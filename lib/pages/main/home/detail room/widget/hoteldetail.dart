import 'package:flutter/material.dart';


import '../../../../../models/list_home_model.dart';

class HotelDetail extends StatelessWidget {
  const HotelDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
       Padding(
        padding: const EdgeInsets.only(left:30.0, top: 20.0, bottom: 20.0),
        child: SizedBox(
          width: 470,
          height: 130,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            
            itemBuilder: (context,index){
              return Container(
                width: 150,
                height: 150,
                decoration:  BoxDecoration(
                  //color: Colors.amber,
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(image: AssetImage('${homeModel[index].image}'),fit: BoxFit.fill),
                  color: Colors.amber
                ));
                
                
            }, separatorBuilder: (_,__){
              return const SizedBox(width: 10,);
            }, itemCount: homeModel.length),
        ),
      
    );
  }
}
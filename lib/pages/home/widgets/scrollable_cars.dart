import 'package:carrent/models/car.dart';
import 'package:carrent/pages/home/widgets/car_cards.dart';
import 'package:flutter/material.dart';

class ScrollableCards extends StatelessWidget {
  const ScrollableCards({
    super.key,
    
  });

  

  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return SizedBox(
      height: size.width*0.25,
      child: ListView.separated(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
        return CarCard( 
          width: (size.width-16*3)/2,
          heigth: ((size.width-16*3)/2)*0.4,
          title: cars[index].name,
          subtitle: "${cars[index].price}\XAF/Jour",
          image: cars[index].image,
          );
      }, 
      separatorBuilder: (context, index)=> const SizedBox(
        width: 16,
      ), 
      itemCount: cars.length),
    );
  }
}


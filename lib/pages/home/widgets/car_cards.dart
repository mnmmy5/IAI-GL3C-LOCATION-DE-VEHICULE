import 'package:carrent/colors.dart';
import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
  const CarCard({
    super.key, 
    required this.width, 
    required this.heigth, 
    required this.title, 
    required this.subtitle, 
    required this.image,
   
  });

 final double width;
 final double heigth;
 final String title;
 final String subtitle;
 final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children:[ Container(
        width: width,
        padding: const EdgeInsets.only(
          left: 12, right: 12, bottom: 12
        ),
        decoration: BoxDecoration(
          color: secbackgroundColor,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height:heigth * 0.5,
            ),
          Text(
            title, 
          style: Theme.of(context)
          .textTheme
          .titleMedium!
          .copyWith(
            color: Colors.white, 
          letterSpacing: 0.8)
          ),
          Text(
            subtitle, 
          style: Theme.of(context)
          .textTheme
          .titleMedium!
          .copyWith(
            color: yellowColor, 
          letterSpacing: 0.8)
          ),
        ],),
      ),
      Positioned(
        top: -heigth*0.5,
        right: width*0.1,
        child: SizedBox(
          width: width*0.8,
          child: Image.asset(image, 
          fit: BoxFit.fitHeight,),
        ))
      ]
    );
  }
}



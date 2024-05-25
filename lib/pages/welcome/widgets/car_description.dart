import 'package:flutter/material.dart';
import 'package:carrent/pages/welcome/widgets/title_text.dart';


class CarDescription extends StatelessWidget {
  const CarDescription({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width*0.7,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleText(),
          const SizedBox(
            height: 32,
          ),
          Text("Get Experience Ridding Your Dream Car, We Still Set Up The Car, You Just Need To Book And Go Rock", style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Colors.white,
              letterSpacing: 1.2,
              height: 1.3),)
        ],
      )
      ,);
  }
}
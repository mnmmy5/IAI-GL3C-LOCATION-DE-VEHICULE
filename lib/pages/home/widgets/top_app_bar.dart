import 'package:flutter/material.dart';
import 'package:carrent/colors.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return Row(
      children: [const Icon(
        Icons.location_on,
        color: yellowColor,
        size: 30,
      ),
        const SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ta Localisation",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(
                  color: greyColor),
            ),
            Text(
              "Yaounde, Cameroon",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(
                  color: backgroundColor),
            )
          ],),
        const Spacer(),
        Container(
          width: size.width*0.12,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: greyColor)),
          child: Image.asset(
            "assets/user.png",
            fit: BoxFit.cover,),
        )
      ],
    );
  }
}
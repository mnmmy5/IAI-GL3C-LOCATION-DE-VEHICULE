import 'package:carrent/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextAndMoreRow extends StatelessWidget {
  const TextAndMoreRow({
    super.key, required this.text,
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(
      text,
    style: Theme.of(context)
    .textTheme
    .titleLarge!
    .copyWith(
      color: Colors.white, 
    fontWeight: FontWeight.bold)
    ,),
    Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8, horizontal: 16,
      ),
      decoration: BoxDecoration(
        color: secbackgroundColor,
        borderRadius: BorderRadius.circular(40),
                        ),
      child: Row(
        children: [
          Text("Autre",
          style: Theme.of(context)
          .textTheme
          .titleMedium!
          .copyWith(
            color: yellowColor),
            ),
            const Icon(CupertinoIcons.play_arrow_solid,
            size: 10,
            color: yellowColor,),
            const SizedBox(
              width: 8,
            )
        ],
        ),
    )
    ],
    );
  }
}


import 'package:flutter/material.dart';
import '../../../colors.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: "Choisis La Voiture De Tes Reves",
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(
            letterSpacing: 1.2,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          children: const
          [TextSpan(
                text: "Y/S LOCATION",
                style: TextStyle(color: yellowColor))]),
    );
  }
}
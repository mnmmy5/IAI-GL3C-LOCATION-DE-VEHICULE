
import 'package:flutter/material.dart';
import 'package:carrent/colors.dart';
import 'package:carrent/pages/welcome/widgets/title_text.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage ({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          const BackgroundImage(),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: Stack(
            children: [Container(
              width: size.width,
              padding: const EdgeInsets.all(16),
              decoration:
              const BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                SizedBox(
                  width: size.width*0.7,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleText()
                    ]
                    ,)
                  ,)
              ],
              ),
            )],
          )
          ),
      ],
      ),
    );
  }
}





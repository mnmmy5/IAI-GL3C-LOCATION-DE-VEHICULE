import 'package:carrent/pages/home/widgets/bottom_nav_bar.dart';
import 'package:carrent/pages/home/widgets/scrollable_brands.dart';
import 'package:carrent/pages/home/widgets/scrollable_cars.dart';
import 'package:carrent/pages/home/widgets/search_field.dart';
import 'package:carrent/pages/home/widgets/text_and_more_row.dart';
import 'package:flutter/material.dart';
import 'package:carrent/colors.dart';
import 'package:carrent/pages/home/widgets/top_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage ({super.key});

  @override
  Widget build(BuildContext context) { 
    return SafeArea(
      child: Scaffold(
      body: body(context),
      bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }

 Widget body(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(16),
      child: SizedBox(
        height: size.height*0.25,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopAppBar(),
            Text("Realise ton rêves\nSelectionne Ta voiture", 
            style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .copyWith(color: backgroundColor, 
            fontWeight: FontWeight.bold),
              ),
            const SearchField()
          ],
        ),
      ),
      )
    ,const SizedBox(
      height: 16,
    ),
    Expanded(
      child: Container(
        width: size.width,
        decoration: const BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        padding: const EdgeInsets.all(16),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextAndMoreRow(text: "Top Constructeur",),
          ScrollableBrands(),
          TextAndMoreRow(text: "Recommendations",),
          SizedBox(
            height: 12,
          ),
          ScrollableCards(),
        ],
        ) ,
      ),
    )
    ],
  );
  }
}


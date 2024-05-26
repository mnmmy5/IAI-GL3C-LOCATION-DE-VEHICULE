import 'package:carrent/pages/home/widgets/brand_card.dart';
import 'package:flutter/material.dart';
import 'package:carrent/pages/home/widgets/brand_vehicles_page.dart';

class ScrollableBrands extends StatelessWidget {
  const ScrollableBrands({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var images = ["assets/1.png", "assets/2.png", "assets/3.png", "assets/4.png", "assets/5.png"];
    var brands = ["Brand 1", "Brand 2", "Brand 3", "Brand 4", "Brand 5"]; // Add corresponding brand names

    return SizedBox(
      height: (size.width - 16 * 4) / 3,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BrandVehiclesPage(brand: brands[index]),
                ),
              );
            },
            child: BrandCard(
              image: images[index],
              width: (size.width - 16 * 4) / 3,
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 16),
        itemCount: images.length,
      ),
    );
  }
}

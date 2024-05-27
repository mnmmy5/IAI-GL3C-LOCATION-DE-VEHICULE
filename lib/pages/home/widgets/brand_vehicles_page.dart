import 'package:carrent/pages/home/widgets/car_details_page.dart';
import 'package:flutter/material.dart';
import 'package:carrent/models/car.dart';


class BrandVehiclesPage extends StatelessWidget {
  final String brand;

  const BrandVehiclesPage({required this.brand, super.key});

  @override
  Widget build(BuildContext context) {
    // Filtrer les véhicules par marque
    final brandCars = cars.where((car) => car.brand == brand).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('$brand Vehicles'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: brandCars.length,
          itemBuilder: (context, index) {
            final car = brandCars[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CarDetailsPage(car: car),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    Image.asset(car.logo, width: 50, height: 50),
                    const SizedBox(width: 16),
                    Expanded(child: Text(car.brand)),
                    Expanded(child: Text(car.name)),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BrandVehiclesPage extends StatelessWidget {
  final String brand;
  const BrandVehiclesPage(
    {required this.brand, super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy data for vehicles. Replace this with your actual data.
    final vehicles = [
      {'logo': 'assets/1.png', 'brand': 'Brand 1', 'model': 'Model 1'},
      {'logo': 'assets/2.png', 'brand': 'Brand 2', 'model': 'Model 2'},
      {'logo': 'assets/3.png', 'brand': 'Brand 3', 'model': 'Model 3'},
      {'logo': 'assets/4.png', 'brand': 'Brand 4', 'model': 'Model 4'},
      {'logo': 'assets/5.png', 'brand': 'Brand 5', 'model': 'Model 5'},
    ].where((vehicle) => vehicle['brand'] == brand).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('$brand Vehicles'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: vehicles.length,
          itemBuilder: (context, index) {
            final vehicle = vehicles[index];
            return Row(
              children: [
                Image.asset(vehicle['logo']!, width: 50, height: 50),
                const SizedBox(width: 16),
                Expanded(child: Text(vehicle['brand']!)),
                Expanded(child: Text(vehicle['model']!)),
              ],
            );
          },
        ),
      ),
    );
  }
}

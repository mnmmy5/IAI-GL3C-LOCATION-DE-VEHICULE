import 'package:flutter/material.dart';
import 'package:carrent/colors.dart';
import 'package:carrent/models/car.dart';

class CarDetailsPage extends StatelessWidget {
  final Car car;

  const CarDetailsPage({required this.car, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(car.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(car.image, fit: BoxFit.cover, height: 200),
            ),
            const SizedBox(height: 16),
            Text("Price: \$${car.price}/Jour", style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 16),
            Expanded(
              child: SingleChildScrollView(
                child: Table(
                  border: TableBorder.all(color: Colors.grey),
                  columnWidths: const {
                    0: FlexColumnWidth(1),
                    1: FlexColumnWidth(2),
                  },
                  children: [
                    for (var caracteristic in car.caracteristics)
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(caracteristic.title),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(caracteristic.subtitle),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Logic for reservation can be added here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: yellowColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                ),
                child: Text(
                  "Réserver",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: backgroundColor,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

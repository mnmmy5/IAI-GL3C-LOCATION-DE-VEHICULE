class Caracteristics {
  final String title;
  final String subtitle;
  final String image;

  Caracteristics(this.title, this.subtitle, this.image);
}

class Car {
  final String name;
  final int price;
  final String image;
  final String logo;
  final String image2;
  final String brand;
  final List<Caracteristics> caracteristics;

  Car(this.name, this.price, this.image, this.logo, this.image2, this.brand, this.caracteristics);
}

List<Caracteristics> lamborghiniCaracteristics = [
  Caracteristics("Capacity", "4 seats", "assets/seats.png"),
  Caracteristics("Max Speed", "295 KM/h", "assets/motor.png"),
  Caracteristics("Power", "780 HP", "assets/engine.png"),
];
List<Caracteristics> ferrariCaracteristics = [
  Caracteristics("Capacity", "4 seats", "assets/seats.png"),
  Caracteristics("Max Speed", "285 KM/h", "assets/motor.png"),
  Caracteristics("Power", "780 HP", "assets/engine.png"),
];
List<Caracteristics> mercedesCaracteristics = [
  Caracteristics("Capacity", "4 seats", "assets/seats.png"),
  Caracteristics("Max Speed", "235 KM/h", "assets/motor.png"),
  Caracteristics("Power", "430 HP", "assets/engine.png"),
];
List<Caracteristics> porscheCaracteristics = [
  Caracteristics("Capacity", "4 seats", "assets/seats.png"),
  Caracteristics("Max Speed", "255 KM/h", "assets/motor.png"),
  Caracteristics("Power", "420 HP", "assets/engine.png"),
];
List<Caracteristics> bmwCaracteristics = [
  Caracteristics("Capacity", "4 seats", "assets/seats.png"),
  Caracteristics("Max Speed", "265 KM/h", "assets/motor.png"),
  Caracteristics("Power", "480 HP", "assets/engine.png"),
];

List<Car> cars = [
  Car("Lamborghini Urus", 520, "assets/c1.png", "assets/3.png", "assets/b1.png", "Lamborghini", lamborghiniCaracteristics),
  Car("BMW M7 Series", 430, "assets/c2.png", "assets/1.png", "assets/b2.png", "BMW", bmwCaracteristics),
  Car("Porsche Cayenne", 500, "assets/c3.png", "assets/4.png", "assets/b3.png", "Porsche", porscheCaracteristics),
  Car("Mercedes S Class", 500, "assets/c4.png", "assets/2.png", "assets/b4.png", "Mercedes", porscheCaracteristics),
  Car("Ferrari Purosangue", 500, "assets/c5.png", "assets/5.png", "assets/b5.png", "Ferrari", ferrariCaracteristics),
];

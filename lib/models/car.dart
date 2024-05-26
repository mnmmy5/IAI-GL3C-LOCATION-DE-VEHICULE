class Car {
  final String name;
  final int price;
  final String image;
  final String logo;
  final String image2;
  final String brand;

  Car(this.name, this.price, this.image, this.logo, this.image2, this.brand);
}

List<Car> cars = [
  Car("Lamborghini Urus", 520, "assets/c1.png", "assets/3.png", "assets/b1.png", "Lamborghini"),
  Car("BMW M7 Series", 430, "assets/c2.png", "assets/1.png", "assets/b2.png", "BMW"),
  Car("Porsche Cayenne", 500, "assets/c3.png", "assets/4.png", "assets/b3.png", "Porsche"),
  Car("Mercedes S Class", 500, "assets/c4.png", "assets/2.png", "assets/b4.png", "Mercedes"),
  Car("Ferrari Purosangue", 500, "assets/c5.png", "assets/5.png", "assets/b5.png", "Ferrari"),
];

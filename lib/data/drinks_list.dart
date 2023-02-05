class DrinkItem {
  final String image;
  final String name;
  final double price;

  DrinkItem({required this.image, required this.name, required this.price});
}

List<DrinkItem> drinkItems = [
  DrinkItem(image: "qare.png", name: "Watermallon", price: 2.5),
  DrinkItem(image: "mango12.png", name: "Mango", price: 1.5),
  DrinkItem(image: "mango12.png", name: "Mango", price: 1.5),
  DrinkItem(image: "strawberry.jpg", name: "Strawberry", price: 1.5),
  DrinkItem(image: "pineable.jpg", name: "Pineable", price: 1.5),
  DrinkItem(image: "avocado.jpg", name: "Avocado", price: 1.5),
];

class PopularItem {
  final String image;
  final String name;
  final String detail;
  final double price;

  PopularItem(
      {required this.image,
      required this.detail,
      required this.name,
      required this.price});
}

List<PopularItem> popular = [
  PopularItem(
      image: "mango12.png",
      detail:
          "pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, ",
      name: "Mango",
      price: 2.5),
  PopularItem(
      image: "bugger12.png",
      detail:
          "pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, ",
      name: "Bugger",
      price: 4.5),
  PopularItem(
      image: "pizza12.jpg",
      detail:
          "pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, ",
      name: "Pizza",
      price: 12),
  PopularItem(
      image: "coffee12.png",
      detail:
          "pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, ",
      name: "Coffee",
      price: 2.5),
];

class NewListItem {
  final String image;
  final String name;
  final String detail;
  final double price;

  NewListItem(
      {required this.image,
      required this.detail,
      required this.name,
      required this.price});
}

List<NewListItem> newListItem = [
  NewListItem(
      image: "coffee12.png",
      detail:
          "pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, ",
      name: "Coffee",
      price: 2.5),
  NewListItem(
      image: "pizza12.jpg",
      detail:
          "pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, ",
      name: "Pizza",
      price: 12),
  NewListItem(
      image: "mango12.png",
      detail:
          "pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, ",
      name: "Mango",
      price: 2.5),
  NewListItem(
      image: "pizza12.jpg",
      detail:
          "pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, ",
      name: "Pizza",
      price: 12),
  NewListItem(
      image: "bugger12.png",
      detail:
          "pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, ",
      name: "Bugger",
      price: 4.5),
];

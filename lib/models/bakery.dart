class Bakery {
  final String name;
  final String open;
  final String close;
  final String distance;
  final String image;
  Bakery({
    required this.close,
    required this.distance,
    required this.image,
    required this.name,
    required this.open,
  });
}

List<Bakery> bakeryList = [
  Bakery(
    name: "Handmade Crakers",
    open: "09.00",
    close: "20.00",
    distance: "5.5",
    image: "assets/1.jpg",
  ),
  Bakery(
    name: "Yue's Cake Store",
    open: "09.00",
    close: "20.00",
    distance: "5.5",
    image: "assets/5554d382bdf40_thumb900.jpg",
  ),
  Bakery(
    name: "Carlota Pasteleria",
    open: "09.00",
    close: "20.00",
    distance: "5.5",
    image: "assets/attachment_113725429.jpg",
  ),
  Bakery(
    name: "Dominocake Bakery",
    open: "09.00",
    close: "20.00",
    distance: "5.5",
    image: "assets/LAE9AKLOVOBe-9ws-752-dominocake-1470987668_1_logo_orig.png",
  ),
];

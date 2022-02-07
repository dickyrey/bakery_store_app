class Cake {
  final String title;
  final String bakery;
  final String price;
  final String discount;
  final String image;
  Cake({
    required this.bakery,
    required this.discount,
    required this.price,
    required this.title,
    required this.image,
  });
}

List<Cake> cakeList = [
  Cake(
    title: "Birthday Cake with Milk Buttercream",
    bakery: "Cake World",
    price: "12.50",
    discount: "17.23",
    image:
        "assets/Best-Birthday-Cake-with-milk-chocolate-buttercream-SQUARE.jpg",
  ),
  Cake(
    title: "Cupcakes",
    bakery: "Mad Better",
    price: "10.41",
    discount: "15.20",
    image: "assets/cupcakes_93722_16x9.jpg",
  ),
  Cake(
    title: "Bolu Cake",
    bakery: "Dapur Emak",
    price: "15.00",
    discount: "20.00",
    image: "assets/images_Kue-Basah_kue-bolu-mentega.jpg",
  ),
  Cake(
    title: "Lapis Legit Cake",
    bakery: "Toko Lebaran",
    price: "7.00",
    discount: "10.00",
    image: "assets/lapislegit.jpg",
  ),
  Cake(
    title: "Birthday Cake",
    bakery: "Love Cake.inc",
    price: "17.00",
    discount: "25.00",
    image: "assets/naked-cake-2.jpg",
  ),
];

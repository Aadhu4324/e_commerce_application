class Products {
  String title;
  String description;
  String image;
  double price;
  int quantity;
  String categories;
  int id;
  bool isFav;
  Products(
      {required this.title,
      required this.description,
      required this.price,
      required this.quantity,
      required this.categories,
      required this.image,
      required this.id,
      required this.isFav});
}

List<Products> products = [
  Products(
      title: "Nike Sport Shoe",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      price: 1999,
      quantity: 1,
      categories: "Shoes",
      image: "images/categorie1.jpg",
      id: 1,
      isFav: false),
  Products(
      title: "Leives ",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      price: 1999,
      quantity: 1,
      categories: "Shirts",
      image: "images/categorie2.jpg",
      id: 2,
      isFav: false),
  Products(
      title: "Mamearth",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      price: 899,
      quantity: 1,
      categories: "Beauty",
      image: "images/categorie3.jpg",
      id: 3,
      isFav: false),
  Products(
      title: "jwellery",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      price: 18999,
      quantity: 1,
      categories: "Jwellery",
      image: "images/categorie4.jpg",
      id: 4,
      isFav: false),
  Products(
      title: "Lpatop",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      price: 49999,
      quantity: 1,
      categories: "Tech",
      image: "images/categorie5.jpg",
      id: 5,
      isFav: false)
];

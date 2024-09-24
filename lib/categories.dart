class Categories {
  String imagePath;
  String title;
  Categories({required this.imagePath, required this.title});
}

List<Categories> categories = [
  Categories(imagePath: "images/categorie1.jpg", title: "Shoes"),
  Categories(imagePath: "images/categorie2.jpg", title: "Shirts"),
  Categories(imagePath: "images/categorie3.jpg", title: "Beauty"),
  Categories(imagePath: "images/categorie4.jpg", title: "Jwellery"),
  Categories(imagePath: "images/categorie5.jpg", title: "Tech")
];

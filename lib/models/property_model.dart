class PropertyModel {
  String title;
  String imageUrl;
  int price;
  String location;

  PropertyModel({
    required this.title,
    required this.imageUrl,
    required this.price,
    required this.location,
  });
  static List<PropertyModel> properties = [
    PropertyModel(
      title: 'Eve Heaven House',
      imageUrl: 'assets/images/house_1.jpg',
      price: 400,
      location: 'Giza, Egypt',
    ),
    PropertyModel(
      title: 'Whitespace House',
      imageUrl: 'assets/images/house_2.jpg',
      price: 1199,
      location: 'Sohag, Egypt',

    ),
    PropertyModel(
      title: 'Eve Heaven House',
      imageUrl: 'assets/images/house_3.jpg',
      price: 400,
      location: 'Giza, Egypt',

    ),
    PropertyModel(
      title: 'Whitespace House',
      imageUrl: 'assets/images/house_4.jpg',
      price: 450,
      location: 'Sohag, Egypt',
    ),
    PropertyModel(
      title: 'Whitespace House',
      imageUrl: 'assets/images/house_5.jpg',
      price: 555,
      location: 'Sohag, Egypt',
    ),
  ];
}
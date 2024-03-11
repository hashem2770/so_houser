class PropertyModel {
  String title;
  String imageUrl;
  int price;
  String location;
  int beds;
  int baths;
  int area;

  PropertyModel({
    required this.title,
    required this.imageUrl,
    required this.price,
    required this.location,
    this.beds = 0,
    this.baths = 0,
    this.area = 0,
  });
  static List<PropertyModel> properties = [
    PropertyModel(
      title: 'Eve Heaven House',
      imageUrl: 'assets/images/house_1.jpg',
      price: 400,
      location: 'Giza, Egypt',
      area: 1200,
      beds: 3,
      baths: 2,
    ),
    PropertyModel(
      title: 'Whitespace House',
      imageUrl: 'assets/images/house_2.jpg',
      price: 1199,
      location: 'Sohag, Egypt',
      area: 1200,
      beds: 3,
      baths: 2,

    ),
    PropertyModel(
      title: 'Eve Heaven House',
      imageUrl: 'assets/images/house_3.jpg',
      price: 400,
      location: 'Giza, Egypt',
      area: 1200,
      beds: 3,
      baths: 2,

    ),
    PropertyModel(
      title: 'Whitespace House',
      imageUrl: 'assets/images/house_4.jpg',
      price: 450,
      location: 'Sohag, Egypt',
      area: 1200,
      beds: 3,
      baths: 2,
    ),
    PropertyModel(
      title: 'Whitespace House',
      imageUrl: 'assets/images/house_5.jpg',
      price: 555,
      location: 'Sohag, Egypt',
      area: 1200,
      beds: 3,
      baths: 2,
    ),
  ];
}
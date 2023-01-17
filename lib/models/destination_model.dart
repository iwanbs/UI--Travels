class Destination {
  String imageUrl;
  String destination;
  String country;
  double rating;
  int price;
  String description;

  Destination({
    required this.imageUrl,
    required this.destination,
    required this.price,
    required this.rating,
    required this.country,
    required this.description,
  });
}

final List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/ubud.jpg',
    destination: 'Ubud Temple',
    country: 'Indonesia',
    price: 10,
    rating: 5,
    description:
        'Visit Ubud Temple for an amazing and unforgettable adventure.',
  ),
  Destination(
    imageUrl: 'assets/images/labuan_bajo.jpeg',
    destination: 'Labuan Bajo',
    country: 'Indonesia',
    price: 160,
    rating: 5,
    description:
        'Visit Labuan Bajo for an amazing and unforgettable adventure.',
  ),
  Destination(
    imageUrl: 'assets/images/raja_ampat.jpeg',
    destination: 'Raja Ampat',
    country: 'Indonesia',
    price: 156,
    rating: 5,
    description: 'Visit Raja Ampat for an amazing and unforgettable adventure.',
  ),
];

List<Destination> destinations1 = [
  Destination(
    imageUrl: 'assets/images/wakatobi.jpg',
    destination: 'Wakatobi',
    country: 'Indonesia',
    price: 121,
    rating: 4.9,
    description: 'Visit Wakatobi for an amazing and unforgettable adventure.',
  ),
  Destination(
    imageUrl: 'assets/images/kuta.jpg',
    destination: 'Kuta Beach',
    country: 'Indonesia',
    price: 6,
    rating: 4.5,
    description: 'Visit Kuta Beach for an amazing and unforgettable adventure.',
  ),
  Destination(
    imageUrl: 'assets/images/pandawa.jpg',
    destination: 'Pandawa Beach',
    country: 'Indonesia',
    price: 5,
    rating: 4.7,
    description:
        'Visit Pandawa Beach for an amazing and unforgettable adventure.',
  ),
  Destination(
    imageUrl: 'assets/images/goa_jomblang.jpeg',
    destination: 'Goa Jomblang',
    country: 'Indonesia',
    price: 5,
    rating: 4.7,
    description:
        'Visit Goa Jomblang for an amazing and unforgettable adventure.',
  ),
  Destination(
    imageUrl: 'assets/images/prambanan.jpeg',
    destination: 'Prambanan Temple',
    country: 'Indonesia',
    price: 5,
    rating: 4.5,
    description:
        'Visit Prambanan Temple for an amazing and unforgettable adventure.',
  ),
];

final categoryList = [
  'Malaysia',
  'Singapore',
  'Thailand',
  'Filipine',
  'Vietnam',
  'Japan',
  'Korea'
];

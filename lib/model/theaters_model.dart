class TheaterModel {
  final int id;
  final String name;
  final String location;
  final String image;
  final String contact;
  final String email;

  TheaterModel({
    required this.id,
    required this.name,
    required this.location,
    required this.image,
    required this.contact,
    required this.email,
  });
}

List<TheaterModel> theaters = [
  TheaterModel(
    id: 1,
    name: "Midtown Cinemas",
    location: "Newroad, Pokhara",
    image: "assets/midtown.png",
    contact: "9845152457",
    email: "midtown@gmail.com",
  ),
  TheaterModel(
    id: 2,
    name: "BSR Movies",
    location: "BG Mall, Kathmandu",
    image: "assets/bsr.png",
    contact: "9847891245",
    email: "bsr@gmail.com",
  ),
  TheaterModel(
    id: 3,
    name: "Cineplex",
    location: "TradeMall, Pokhara",
    image: "assets/cineplex.png",
    contact: "9847845124",
    email: "cineplex@gmail.com",
  ),
  TheaterModel(
    id: 4,
    name: "FCube Cinemas",
    location: "KL Tower, Kathmandu",
    image: "assets/fcube.png",
    contact: "9514568745",
    email: "fcube@gmail.com",
  ),
  TheaterModel(
    id: 5,
    name: "QFX Cinemas",
    location: "Newroad, Pokhara",
    image: "assets/qfx.png",
    contact: "9845174568",
    email: "qfx@gmail.com",
  ),
];

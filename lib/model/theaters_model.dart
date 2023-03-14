class TheaterModel {
  final int id;
  final String name;
  final String location;
  final String image;

  TheaterModel(
      {required this.id,
      required this.name,
      required this.location,
      required this.image});
}

List<TheaterModel> theaters = [
  TheaterModel(
    id: 1,
    name: "Midtown Cinemas",
    location: "Newroad, Pokhara",
    image: "assets/midtown.png",
  ),
  TheaterModel(
    id: 2,
    name: "BSR Movies",
    location: "BG Mall, Kathmandu",
    image: "assets/bsr.png",
  ),
  TheaterModel(
    id: 3,
    name: "Cineplex",
    location: "TradeMall, Pokhara",
    image: "assets/cineplex.png",
  ),
  TheaterModel(
    id: 4,
    name: "FCube Cinemas",
    location: "KL Tower, Kathmandu",
    image: "assets/fcube.png",
  ),
  TheaterModel(
    id: 5,
    name: "QFX Cinemas",
    location: "Newroad, Pokhara",
    image: "assets/qfx.png",
  )
];

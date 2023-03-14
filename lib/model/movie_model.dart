import 'package:speedy_book/view/showtimes.dart';

class MovieModel {
  final int id;
  final String name;
  final String description;
  final String image;
  final String trailer;
  final String date;
  final String genre;
  final String time;
  final String cast;
  final String director;

  MovieModel({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.trailer,
    required this.date,
    required this.genre,
    required this.time,
    required this.cast,
    required this.director,
  });
}

List<MovieModel> movies = [
  MovieModel(
    id: 1,
    name: "Avengers Endgame",
    description:
        "Adrift in space with no food or water, Tony Stark sends a message to Pepper Potts as his oxygen supply starts to dwindle. Meanwhile, the remaining Avengers- Thor, Black Widow, Captain America and Bruce Banner- must figure out a way to bring back their vanquished allies for an epic showdown with Thanos - the evil demigod who decimated the planet and the universe.",
    image: "assets/avengers.jpg",
    trailer: "TcMBFSGVi1c",
    date: "03/28/2023",
    genre: "Action, Adventure, Superhero",
    time: "3hrs 1 min",
    cast:
        "Robert Downey, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson ,  Natasha Romanoff, Jeremy Renner",
    director: "Anthony Russo, Joe Russo",
  ),
  MovieModel(
    id: 2,
    name: "Doctor Strange: Multiverse",
    description:
        "Doctor Strange teams up with a mysterious teenage girl from his dreams who can travel across multiverses, to battle multiple threats, including other-universe versions of himself, which threaten to wipe out millions across the multiverse.",
    image: "assets/doctorstrange.jpg",
    trailer: "aWzlQ2N6qqg",
    date: "03/30/2023",
    genre: "Action, Superhero, Adventure",
    time: "2hrs 6 min",
    cast:
        "Benedict Cumberbatch, Elizabeth Olsen, Chiwetel Ejiofor, Benedict Wong, Xochitl Gomez ",
    director: "Sami Raimi",
  ),
  MovieModel(
    id: 3,
    name: "Prem Geet 3",
    description:
        "After being born during an auspicious astrological time, Prem, the younger prince of the Kingdom of Khazaag who is destined to be king must overcome his biggest obstacle in life, love.",
    image: "assets/premgeet3.jpg",
    trailer: "XYw5eosrB7k",
    date: "03/30/2023",
    genre: "Historical, Action, Love Story",
    time: "1hrs 58 min",
    cast: "Pradeep Khadka, Shiva Shrestha, Sunil Thapa, Kristina Gurung",
    director: "Santosh Sen, Chhetan Gurung",
  ),
  MovieModel(
    id: 4,
    name: "Sita Ramam",
    description:
        "An orphaned soldier's life changes after he receives a letter from a girl named Sita. He meets her and love blossoms between them. When he returns to her camp in Kashmir, he sends a letter to Sita that will not reach her.",
    image: "assets/sitaramam.jpg",
    trailer: "PFcE1Rw5lmo",
    date: "03/30/2023",
    genre: "Romance, Historic Drama",
    time: "2hrs 43 min",
    cast:
        "Dulquer Salmaan, Mrunal Thakur, Rashmika Mandanna , Tharun Bhascker ",
    director: "Hanu Raghavapudi",
  ),
  MovieModel(
    id: 5,
    name: "Spider-Man: No Way Home",
    description:
        "With Spider-Man's identity now revealed, our friendly neighborhood web-slinger is unmasked and no longer able to separate his normal life as Peter Parker from the high stakes of being a superhero. When Peter asks for help from Doctor Strange, the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.",
    image: "assets/spiderman.jpg",
    trailer: "JfVOs4VSpmA",
    date: "03/30/2023",
    genre: "Action, Superhero, Science fiction",
    time: "2hrs 28 min",
    cast: "Tom Holland , Zendaya , Benedict Cumberbatch , Jacob Batalon",
    director: "Kevin Feige",
  ),
  MovieModel(
    id: 6,
    name: "Thor: Love and Thunder",
    description:
        "Thor embarks on a journey unlike anything he's ever faced - a quest for inner peace. However, his retirement gets interrupted by Gorr the God Butcher, a galactic killer who seeks the extinction of the gods. To combat the threat, Thor enlists the help of King Valkyrie, Korg and ex-girlfriend Jane Foster, who - to his surprise - inexplicably wields his magical hammer. Together, they set out on a harrowing cosmic adventure to uncover the mystery of the God Butcher's vengeance.",
    image: "assets/thor.jpg",
    trailer: "tgB1wUcmbbw&t",
    date: "03/30/2023",
    genre: "Action, Superhero, Adventure",
    time: "1hrs 59 min",
    cast: "Chris Hemsworth, Christian Bale, Natalie Portman",
    director: "Taika Waititi",
  ),
];
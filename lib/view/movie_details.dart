import 'package:flutter/material.dart';
import 'package:speedy_book/model/movie_model.dart';
import 'package:speedy_book/view/showtimes.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MoviesDetailsPage extends StatefulWidget {
  const MoviesDetailsPage({Key? key, required this.model}) : super(key: key);
  final MovieModel model;

  @override
  State<MoviesDetailsPage> createState() => _MoviesDetailsPageState();
}

class _MoviesDetailsPageState extends State<MoviesDetailsPage> {
  late final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: widget.model.trailer,
    flags: const YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          widget.model.name,
          style: const TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const SizedBox(height: 10.0),
                SizedBox(
                  width: double.infinity,
                  height: 300.0,
                  child: YoutubePlayer(
                    controller: _controller,
                    showVideoProgressIndicator: true,
                    progressIndicatorColor: Colors.amber,
                    progressColors: const ProgressBarColors(
                      playedColor: Colors.amber,
                      handleColor: Colors.amberAccent,
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(
                  'Date: ${widget.model.date}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(
                  'Time: ${widget.model.time}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(
                  'Genre: ${widget.model.genre}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(
                  'Director: ${widget.model.director}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(
                  'Cast: ${widget.model.cast}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(
                  'Description: ${widget.model.description}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MovieShowtimesPage(),
                ),
              );
            },
            child: const Text(
              "Buy/Reserve",
              style: TextStyle(),
            ),
          ),
        ],
      ),
    );
  }
}

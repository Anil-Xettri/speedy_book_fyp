import 'package:flutter/material.dart';
import 'package:speedy_book/model/movie_model.dart';
import 'package:speedy_book/view/seat_selection.dart';

class MovieShowtimesPage extends StatelessWidget {
  const MovieShowtimesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Movie Showtimes",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];
          return ListTile(
            leading: Image.asset(movie.image),
            title: Text(movie.name),
            subtitle: Text(movie.time),
            //trailing: Text("12:00 PM"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SeatsSelectionPage(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

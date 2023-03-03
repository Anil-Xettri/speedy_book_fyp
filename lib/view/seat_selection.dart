import 'package:flutter/material.dart';

class SeatsSelectionPage extends StatelessWidget {
  const SeatsSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Select Seat",
        ),
      ),
    );
  }
}

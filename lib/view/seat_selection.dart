import 'package:flutter/material.dart';
import '../model/seats_model.dart';

class SeatsSelectionPage extends StatefulWidget {
  const SeatsSelectionPage({super.key});

  @override
  _SeatsSelectionPageState createState() => _SeatsSelectionPageState();
}

class _SeatsSelectionPageState extends State<SeatsSelectionPage> {
  late List<List<Seat>> seatingChart;
  List<Seat> selectedSeats = [];

  @override
  void initState() {
    super.initState();

    seatingChart = List.generate(
      8,
      (i) => List.generate(
        10,
        (j) => Seat(i, j, SeatStatus.available),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          'Seats Selection',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int j = 0; j < seatingChart[0].length; j++)
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < seatingChart.length; i++)
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                final seat = seatingChart[i][j];

                                switch (seat.status) {
                                  case SeatStatus.available:
                                    seat.status = SeatStatus.selected;
                                    selectedSeats.add(seat);
                                    break;
                                  case SeatStatus.selected:
                                    seat.status = SeatStatus.available;
                                    selectedSeats.remove(seat);
                                    break;
                                  case SeatStatus.reserved:
                                  case SeatStatus.booked:
                                    break;
                                }
                              });
                            },
                            child: Container(
                              width: 30,
                              height: 30,
                              margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: _getSeatColor(seatingChart[i][j].status),
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  '${String.fromCharCode(j + 65)}${i + 1}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(bottom: 100.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Buy',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Reserve',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      for (final row in seatingChart) {
                        for (final seat in row) {
                          if (seat.status == SeatStatus.selected) {
                            seat.status = SeatStatus.available;
                          }
                        }
                      }
                    });
                  },
                  child: const Text(
                    'Cancel',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          _buildLegend(),
        ],
      ),
    );
  }

  Color _getSeatColor(SeatStatus status) {
    switch (status) {
      case SeatStatus.available:
        return Colors.green;
      case SeatStatus.selected:
        return Colors.blue;
      case SeatStatus.reserved:
        return Colors.orange;
      case SeatStatus.booked:
        return Colors.grey;
    }
  }

  Widget _buildLegend() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildLegendItem('Available', Colors.green),
          const SizedBox(width: 16),
          _buildLegendItem('Selected', Colors.blue),
          const SizedBox(width: 16),
          _buildLegendItem('Reserved', Colors.orange),
          const SizedBox(width: 16),
          _buildLegendItem('Booked', Colors.grey),
        ],
      ),
    );
  }

  Widget _buildLegendItem(String label, Color color) {
    return Row(
      children: [
        Container(
          width: 16,
          height: 16,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          label,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}

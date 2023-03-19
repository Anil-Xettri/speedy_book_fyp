enum SeatStatus {
  available,
  selected,
  reserved,
  booked,
}

class Seat {
  final int row;
  final int col;
  SeatStatus status;

  Seat(this.row, this.col, this.status);
}

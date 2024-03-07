void main() {
  // Size of the chessboard (assuming it's a standard 8x8 board)
  int boardSize = 8;

  // Initialize an empty chessboard
  List<List<String>> chessboard = List.generate(
      boardSize, (index) => List<String>.filled(boardSize, '.'));

  // Rook positions (row, column)
  List<List<int>> rookPositions = [
    [0, 0],
    [0, 7],
    [7, 0],
    [7,7],
  ];

  // Place rooks on the chessboard
  for (var rookPosition in rookPositions) {
    int row = rookPosition[0];
    int col = rookPosition[1];
    chessboard[row][col] = 'R';
  }

  // Print the chessboard with rook positions
  for (var row in chessboard) {
    print(row.join(' '));
  }
}

import 'package:tic_tac_toe/src/tic_tac_toe.dart';
import 'package:test/test.dart';
import 'dart:io';
import 'dart:math';

typedef Cell = int; // тип клетки поля
typedef GameState = int; // тип состояния игрового процесса

// фигуры в клетке поля
const Cell empty = 0;
const Cell cross = 1;
const Cell nought = 2;

// состояние игрового процесса
const GameState playing = 0;
const GameState draw = 1;
const GameState crossWin = 2;
const GameState noughtWin = 3;
const GameState quit = 3;

// Объявление глобальных переменных
late List<List<Cell>> board;
int boardSize = 3; // размер игрового поля по умолчанию
GameState state = playing;
int randomNumber = Random().nextInt(100);
Cell currentPlayer = randomNumber % 2 == 0
    ? cross
    : nought; //! Текущий игрок, случайно выбирается
void main() {
  test('Инициализация true', () {
    expect(initBoard(), equals(true));
  });

  // test("Проверка введеных значений", () {

  // });
}

part of 'tasbeeh_cubit.dart';

@immutable
sealed class TasbeehState {
  final int currentIndex;
  final int counter;
  final int round;

  const TasbeehState({
    required this.currentIndex,
    required this.counter,
    required this.round,
  });
}

final class TasbeehInitialState extends TasbeehState {
  const TasbeehInitialState() : super(currentIndex: 0, counter: 0, round: 0);
}

final class TasbeehChangedState extends TasbeehState {
  const TasbeehChangedState({
    required super.currentIndex,
    required super.counter,
    required super.round,
  });
}

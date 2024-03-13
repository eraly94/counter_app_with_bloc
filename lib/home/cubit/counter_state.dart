part of 'counter_cubit.dart';

@immutable
sealed class CounterState {
  final int count;

  const CounterState({required this.count});
}

final class CounterInitial extends CounterState {
  const CounterInitial({required super.count});
}

part of 'counter_cubit.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

final class CounterValuechangeState extends CounterState {
  final int counter;
  CounterValuechangeState({required this.counter});
  }

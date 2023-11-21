part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent {}

final class CounterEventIncrement extends CounterEvent {
  final int number;

  CounterEventIncrement(this.number);
}

final class CounterEventDecrement extends CounterEvent {
  final int number;

  CounterEventDecrement(this.number);
}

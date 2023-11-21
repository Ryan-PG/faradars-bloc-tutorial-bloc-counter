part of 'counter_bloc.dart';

@immutable
sealed class CounterState {
  final int counterNumber;

  const CounterState(this.counterNumber);
}

final class CounterInitial extends CounterState {
  const CounterInitial(super.counterNumber);
}

final class CounterLoadInProgress extends CounterState {
  const CounterLoadInProgress(super.counterNumber);
}

final class CounterLoadSuccess extends CounterState {
  const CounterLoadSuccess(super.counterNumber);
}

final class CounterLoadFailure extends CounterState {
  const CounterLoadFailure(super.counterNumber);
}

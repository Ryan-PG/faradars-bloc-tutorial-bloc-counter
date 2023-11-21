import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc()
      : super(
          const CounterInitial(0),
        ) {
    on<CounterEventIncrement>(increment);
    on<CounterEventDecrement>(decrement);
  }

  FutureOr<void> increment(
    CounterEventIncrement event,
    Emitter<CounterState> emit,
  ) async {
    // Event Handler
    emit(
      CounterLoadInProgress(
        event.number,
      ),
    );

    final currentNumber = event.number;

    print("THE CURRENT NUMBER: ${event.number}");
    print("THE NEXT NUMBER: ${event.number + 1}");

    final newNumber = currentNumber + 1;

    await Future.delayed(
      const Duration(
        seconds: 2,
      ),
    );

    emit(
      CounterLoadSuccess(
        newNumber,
      ),
    );
  }

  FutureOr<void> decrement(
    CounterEventDecrement event,
    Emitter<CounterState> emit,
  ) async {
    // Event Handler
    emit(
      CounterLoadInProgress(
        event.number,
      ),
    );

    final currentNumber = event.number;

    print("THE CURRENT NUMBER: ${event.number}");
    print("THE NEXT NUMBER: ${event.number - 1}");

    final newNumber = currentNumber - 1;

    await Future.delayed(
      const Duration(
        seconds: 2,
      ),
    );

    emit(
      CounterLoadSuccess(
        newNumber,
      ),
    );
  }
}

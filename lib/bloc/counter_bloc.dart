import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(CounterInitial()) {
    on< /* any event extends from the CounterEvent */ CounterEvent>(
        (event, emit) {
      if (event is IncreamentEvent) {
        counter++;
        emit(CounterValueChangedState(counter: counter));
      } else if (event is DecreamentEvent) {
        counter--;
        emit(CounterValueChangedState(counter: counter));
      } else {
        counter = 0;
        emit(CounterValueChangedState(counter: counter));
      }
    });
  }
}

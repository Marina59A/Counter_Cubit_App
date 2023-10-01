// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int counter = 0;
  void increment(){
    counter++;
    emit(CounterValuechangeState(counter: counter));
  }

  void decrement(){
    counter--;
    emit(CounterValuechangeState(counter: counter));
  }
}

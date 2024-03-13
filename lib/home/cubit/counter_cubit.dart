import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial(count: 0));
  void increment() {
    emit(CounterInitial(count: state.count + 1));
  }

  void decrement() {
    emit(CounterInitial(count: state.count - 1));
  }
}

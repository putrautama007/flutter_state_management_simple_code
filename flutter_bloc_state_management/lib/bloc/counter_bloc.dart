import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_state_management/bloc/counter_event.dart';

class CounterBLoc extends Bloc<CounterEvent, int> {
  CounterBLoc() : super(0);

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    if (event is IncrementCounter) {
      yield state + 1;
    } else if (event is DecrementCounter) {
      yield state - 1;
    }
  }
}

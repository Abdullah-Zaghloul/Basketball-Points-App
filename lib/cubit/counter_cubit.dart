import 'package:basketball_points_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit(super.initialState);
  int pointA = 0;
  int pointB = 0;
  void pointIncrement({required String team, required int number}) {
    if (team == 'A') {
      pointA += number;
      emit(CounterAState());
    } else if (team == 'B') {
      pointB += number;
      emit(CounterBState());
    } else {
      pointA = 0;
      pointB = 0;
      emit(ResetState());
    }
  }
}

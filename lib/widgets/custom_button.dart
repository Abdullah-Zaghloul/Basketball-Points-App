import 'package:basketball_points_app/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, 
      required this.text,
      required this.team,
      required this.number});
  final String text;
  final String team;
  final int number;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange, minimumSize: const Size(120, 40)),
      onPressed: () {
        BlocProvider.of<CounterCubit>(context)
            .pointIncrement(team: team, number: number);
      },
      child: Text(
        text,
        style: const TextStyle(color: Colors.black, fontSize: 18),
      ),
    );
  }
}

import 'package:basketball_points_app/cubit/counter_cubit.dart';
import 'package:basketball_points_app/cubit/counter_state.dart';
import 'package:basketball_points_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text(
              'Points Counter',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).pointA}',
                        style: const TextStyle(fontSize: 150),
                      ),
                      const CustomButton(
                          text: 'Add 1 point', team: 'A', number: 1),
                      const CustomButton(
                          text: 'Add 2 point', team: 'A', number: 2),
                      const CustomButton(
                          text: 'Add 3 point', team: 'A', number: 3),
                    ],
                  ),
                  const SizedBox(
                    height: 500,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                      indent: 50,
                      endIndent: 50,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).pointB}',
                        style: const TextStyle(fontSize: 150),
                      ),
                      const CustomButton(
                          text: 'Add 1 point', team: 'B', number: 1),
                      const CustomButton(
                          text: 'Add 2 point', team: 'B', number: 2),
                      const CustomButton(
                          text: 'Add 3 point', team: 'B', number: 3),
                    ],
                  ),
                ],
              ),
              const CustomButton(text: 'Reset', team: 'R', number: 0),
            ],
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}

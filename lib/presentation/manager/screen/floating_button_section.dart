import 'package:counter_cubit_app/presentation/manager/counter/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: (){
            context.read<CounterCubit>().increment();
          },
          child: const Text("+",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),),),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(onPressed: (){
            context.read<CounterCubit>().decrement();
          },
          child: const Text("-",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),),),
        ],
      );
  }
}
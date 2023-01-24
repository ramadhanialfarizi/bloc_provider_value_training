import 'package:bloc_provider_value_training/bloc/bloc_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({super.key});

  @override
  Widget build(BuildContext context) {
    Counter number = context.read<Counter>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Other Pages"),
        centerTitle: true,
      ),
      body: Center(
        // disini kita akan mempassing data dari home
        child: BlocBuilder<Counter, int>(
          bloc: number,
          builder: (context, state) {
            return Text(
              '$state',
              style: Theme.of(context).textTheme.headline4,
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter/blocs/counter_bloc.dart';
import 'package:provider_counter/widgets/widgets.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);

    return Scaffold(
      body: new Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                counterBloc.counter.toString(),
                style: TextStyle(
                  fontSize: 50.0,
                ),
              ),
              IncrementButton(),
              DecrementButton(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter/blocs/counter_bloc.dart';
import 'package:provider_counter/pages/counter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterBloc>.value(
          value: CounterBloc(),
        )
      ],
      child: MaterialApp(
        home: CounterPage(),
      ),
    );
  }
}

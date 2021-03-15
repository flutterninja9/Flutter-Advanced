import 'package:flutter/material.dart';
import 'features/counter/counter-screen/counterscreen.dart';
import 'features/counter/providers/counter.dart';
import 'flavors.dart';
import 'utils/get-theme-as-per-flavor.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final flavor = Provider.of<Flavor>(context);
    return ChangeNotifierProvider<Counter>(
      create: (context) => Counter(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: getThemeAsPerEnv(flavor),
        home: CounterScreen(),
      ),
    );
  }
}

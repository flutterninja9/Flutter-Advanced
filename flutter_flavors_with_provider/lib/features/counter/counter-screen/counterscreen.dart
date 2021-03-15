import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flavors.dart';
import 'package:flutter_riverpod/utils/getTitle.dart';
import '../providers/counter.dart';
import '../widgets/counter-widget.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final value = Provider.of<Counter>(context, listen: false);
    final env = Provider.of<Flavor>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(getTitle(env)),
        centerTitle: true,
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'increment',
            onPressed: () =>
                Provider.of<Counter>(context, listen: false).increment(),
            child: Icon(Icons.add),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            heroTag: 'decrement',
            onPressed: () =>
                Provider.of<Counter>(context, listen: false).decrement(),
            child: Icon(Icons.remove),
          ),
        ],
      ),
      body: Center(
        child: Consumer<Counter>(
          builder: (context, counter, child) => CounterWidget(
            value: value.value,
          ),
        ),
      ),
    );
  }
}

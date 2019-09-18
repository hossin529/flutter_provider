import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/providers/HomeProvider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final homeProvider = Provider.of<HomeProvider>(context);
    return Scaffold(
      body: Center(
        child: Text('Counter ${homeProvider.counter}'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => homeProvider.setCounter(),
        child: Icon(Icons.add),
      ),
    );
  }
}

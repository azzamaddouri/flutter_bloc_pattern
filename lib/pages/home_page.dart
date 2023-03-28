import 'package:flutter/material.dart';

import '../widgets/buttons_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Bloc Pattern"),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Counter value is :',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              '0',
              style: TextStyle(color: Colors.blueGrey, fontSize: 30),
            ),
          ],
        )),floatingActionButton: const ButtonsWidget(),);
  }
}

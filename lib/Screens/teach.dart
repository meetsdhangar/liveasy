import 'package:flutter/material.dart';

class Teach extends StatelessWidget {
  const Teach({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Abc"),
      ),
      body: Column(
        children: [Text("abc")],
      ),
    ));
  }
}

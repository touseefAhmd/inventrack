import 'package:flutter/material.dart';

class StockMoveScreen extends StatelessWidget {
  const StockMoveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stock Move")),
      body: const Center(
        child: Text("Stock Move Screen"),
      ),
    );
  }
}

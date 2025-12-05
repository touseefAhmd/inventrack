import 'package:flutter/material.dart';

class StockOutScreen extends StatelessWidget {
  const StockOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stock Out")),
      body: const Center(
        child: Text("Stock Out Screen"),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class StockInScreen extends StatelessWidget {
  const StockInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stock In")),
      body: const Center(child: Text("Stock In Screen")),
    );
  }
}

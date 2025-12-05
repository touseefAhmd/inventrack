import 'package:flutter/material.dart';

import '../StockIn/stock_in_screen.dart';

class ItemListScreen extends StatelessWidget {
  const ItemListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Item List")),
      body: Center(
        child: ElevatedButton(
          child: const Text("Go to Stock In"),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => const StockInScreen()));
          },
        ),
      ),
    );
  }
}

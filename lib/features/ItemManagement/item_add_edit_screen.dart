import 'package:flutter/material.dart';

import '../StockIn/stock_in_screen.dart';
import '../StockMove/stock_move_screen.dart';


class AddEditItemScreen extends StatelessWidget {
  const AddEditItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add / Edit Item")),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ElevatedButton(
            child: const Text("Stock In"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const StockInScreen()));
            },
          ),
          ElevatedButton(
            child: const Text("Stock Move"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const StockMoveScreen()));
            },
          ),
        ],
      ),
    );
  }
}

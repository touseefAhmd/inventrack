import 'package:flutter/material.dart';
import '../QrScanner/qr_scanner_screen.dart';
import '../StockOut/stock_out_screen.dart';


class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Reports")),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ElevatedButton(
            child: const Text("QR Scanner"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const QRScannerScreen()));
            },
          ),
          ElevatedButton(
            child: const Text("Stock Out"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const StockOutScreen()));
            },
          ),
          ElevatedButton(
            child: const Text("Reports"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

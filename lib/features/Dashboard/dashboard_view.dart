import 'package:flutter/material.dart';

import '../Item/item_list_screen.dart';
import '../ItemManagement/item_add_edit_screen.dart';
import '../Reports/reports_screen.dart';
import '../Sync/sync_screen.dart';


class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard")),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          DashboardButton("Item List", const ItemListScreen()),
          DashboardButton("Add/Edit Item", const AddEditItemScreen()),
          DashboardButton("Reports", const ReportsScreen()),
          DashboardButton("Sync", const SyncScreen()),
        ],
      ),
    );
  }
}

class DashboardButton extends StatelessWidget {
  final String title;
  final Widget screen;

  const DashboardButton(this.title, this.screen, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(18)),
        child: Text(title),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => screen),
          );
        },
      ),
    );
  }
}

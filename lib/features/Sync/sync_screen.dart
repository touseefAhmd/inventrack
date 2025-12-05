import 'package:flutter/material.dart';

import '../OfflineSync/offline_sync_screen.dart';

class SyncScreen extends StatelessWidget {
  const SyncScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sync")),
      body: Center(
        child: ElevatedButton(
          child: const Text("Offline Sync"),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => const OfflineSyncScreen()));
          },
        ),
      ),
    );
  }
}

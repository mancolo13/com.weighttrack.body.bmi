import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class HistoryTab extends StatelessWidget {
  const HistoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    final logs = [
      {'date': 'Today', 'weight': '72.0 kg', 'diff': '-0.4 kg'},
      {'date': 'Sep 25', 'weight': '72.4 kg', 'diff': '-0.2 kg'},
      {'date': 'Sep 18', 'weight': '72.6 kg', 'diff': '-0.5 kg'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Weight Timeline'), centerTitle: true),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: logs.length,
        itemBuilder: (ctx, i) {
          final l = logs[i];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: const Icon(Icons.monitor_weight_outlined, color: AppTheme.primary),
              title: Text(l['weight'] as String, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              subtitle: Text(l['date'] as String),
              trailing: Text(l['diff'] as String, style: const TextStyle(color: Colors.greenAccent, fontWeight: FontWeight.bold)),
            ),
          );
        },
      ),
    );
  }
}

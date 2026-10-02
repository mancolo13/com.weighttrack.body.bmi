import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class GoalsTab extends StatelessWidget {
  const GoalsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Goal Horizon'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: const [
                  Text('68.0 kg', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: AppTheme.primary)),
                  SizedBox(height: 6),
                  Text('Target Weight (4.0 kg remaining)', style: TextStyle(color: AppTheme.textSecondary)),
                  SizedBox(height: 16),
                  LinearProgressIndicator(value: 0.65, backgroundColor: Colors.white12, color: AppTheme.primary),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

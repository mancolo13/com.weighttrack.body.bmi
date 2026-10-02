import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class BmiTab extends StatefulWidget {
  const BmiTab({super.key});

  @override
  State<BmiTab> createState() => _BmiTabState();
}

class _BmiTabState extends State<BmiTab> {
  double _height = 175;
  double _weight = 72;

  @override
  Widget build(BuildContext context) {
    final bmi = _weight / ((_height / 100) * (_height / 100));

    return Scaffold(
      appBar: AppBar(title: const Text('BMI Calculator'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Text(bmi.toStringAsFixed(1), style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: AppTheme.primary)),
                  const SizedBox(height: 6),
                  const Text('Body Mass Index (Normal: 18.5 - 24.9)', style: TextStyle(color: AppTheme.textSecondary)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Height: ${_height.round()} cm', style: const TextStyle(fontWeight: FontWeight.bold)),
                  Slider(value: _height, min: 140, max: 210, activeColor: AppTheme.primary, onChanged: (v) => setState(() => _height = v)),
                  const SizedBox(height: 12),
                  Text('Weight: ${_weight.round()} kg', style: const TextStyle(fontWeight: FontWeight.bold)),
                  Slider(value: _weight, min: 40, max: 150, activeColor: AppTheme.primary, onChanged: (v) => setState(() => _weight = v)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

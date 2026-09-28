import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class WeightTab extends StatefulWidget {
  const WeightTab({super.key});

  @override
  State<WeightTab> createState() => _WeightTabState();
}

class _WeightTabState extends State<WeightTab> {
  double _weight = 74.5;
  double _heightCm = 178;

  @override
  Widget build(BuildContext context) {
    final heightM = _heightCm / 100.0;
    final bmi = _weight / (heightM * heightM);

    String status = "Normal";
    Color statusColor = Colors.greenAccent;
    if (bmi < 18.5) {
      status = "Underweight";
      statusColor = Colors.orangeAccent;
    } else if (bmi >= 25.0) {
      status = "Overweight";
      statusColor = Colors.amberAccent;
    }

    return Scaffold(
      appBar: AppBar(title: const Text('WeightTrack & BMI'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  const Text('Calculated Body Mass Index', style: TextStyle(color: AppTheme.textSecondary)),
                  const SizedBox(height: 8),
                  Text(bmi.toStringAsFixed(1), style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: statusColor)),
                  Text(status, style: TextStyle(fontSize: 18, color: statusColor, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Current Weight: ${_weight.toStringAsFixed(1)} kg', style: const TextStyle(fontWeight: FontWeight.bold)),
                  Slider(value: _weight, min: 40, max: 150, activeColor: AppTheme.primary, onChanged: (v) => setState(() => _weight = v)),
                  const SizedBox(height: 16),
                  Text('Height: ${_heightCm.round()} cm', style: const TextStyle(fontWeight: FontWeight.bold)),
                  Slider(value: _heightCm, min: 140, max: 220, activeColor: AppTheme.primary, onChanged: (v) => setState(() => _heightCm = v)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

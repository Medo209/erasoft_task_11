import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  final double value;
  final double min;
  final double max;
  final int? divisions;
  final String? label;
  final Color? activeColor;
  final Color? inactiveColor;
  final ValueChanged<double> onChanged;

  const CustomSlider({
    super.key,
    required this.value,
    required this.onChanged,
    this.min = 0,
    this.max = 100,
    this.divisions,
    this.label,
    this.activeColor,
    this.inactiveColor,
  });

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: value,
      min: min,
      max: max,
      divisions: divisions,
      label: label,
      activeColor: activeColor,
      inactiveColor: inactiveColor,
      onChanged: onChanged,
    );
  }
}

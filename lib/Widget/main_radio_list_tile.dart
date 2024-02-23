import 'package:flutter/material.dart';

class MainRadioListTile extends StatelessWidget {
  final String title;
  final String? selectedValue;
  final Function(String?) onChange;

  const MainRadioListTile({
    super.key,
    required this.title,
    required this.selectedValue,
    required this.onChange,
  });

  @override
  Widget build(context) {
    return RadioListTile(
      contentPadding: const EdgeInsetsDirectional.all(0),
      controlAffinity: ListTileControlAffinity.trailing,
      title: Text(title),
      value: title,
      groupValue: selectedValue,
      onChanged: onChange,
    );
  }
}

import 'package:flutter/material.dart';

import 'main_radio_list_tile.dart';

class RadioListTileWidget extends StatefulWidget {
  const RadioListTileWidget({super.key});

  @override
  State<RadioListTileWidget> createState() => _RadioListTileState();
}

class _RadioListTileState extends State<RadioListTileWidget> {
  List<String> values = [
    'Customer was late more then 20 min',
    'Customer does not answer',
    'Customer refuse to receive the car',
    'Customer did not provide the ID',
    'Different Person',
    'Other',
  ];

  String? reason;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: values.length,
          itemBuilder: (context, index) => MainRadioListTile(
            title: values[index],
            selectedValue: reason,
            onChange: (value) => setState(() => reason = value),
          ),
        ),
        if (reason == values.last)
          TextFormField(
            keyboardType: TextInputType.multiline,
            maxLines: 3,
            decoration: const InputDecoration(
              hintText: 'Add Reason',
              border: OutlineInputBorder(),
            ),
          ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

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
  bool visible = true;
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
            selectedValue: values[2],
            onChange: (value) {},
          ),
        ),
        Visibility(
          visible: true,
          child: TextFormField(
            keyboardType: TextInputType.multiline,
            maxLines: 3,
            decoration: const InputDecoration(
              hintText: 'Add Reason',
              border: OutlineInputBorder(),
            ),
          ),
        )
      ],
    );
  }
}

class MainRadioListTile extends StatelessWidget {
  final String title;
  final String selectedValue;
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

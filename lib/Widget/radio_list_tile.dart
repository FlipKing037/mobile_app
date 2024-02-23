import 'package:flutter/material.dart';

class RadioListTileWidget extends StatefulWidget {
  const RadioListTileWidget({super.key});

  @override
  State<RadioListTileWidget> createState() => _RadioListTileState();
}

class _RadioListTileState extends State<RadioListTileWidget> {
  String? reason;
  bool visible = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MainRadioListTile(
          title: 'Customer was late more then 20 min',
        ),
        const MainRadioListTile(
          title: 'Customer does not answer',
        ),
        const MainRadioListTile(
          title: 'Customer refuse to receive the car',
        ),
        const MainRadioListTile(
          title: 'Customer did not provide the ID',
        ),
        const MainRadioListTile(
          title: 'Different Person',
        ),
        const MainRadioListTile(
          title: 'Other',
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

  const MainRadioListTile({super.key, required this.title});

  @override
  Widget build(context) {
    return RadioListTile(
      contentPadding: const EdgeInsetsDirectional.all(0),
      controlAffinity: ListTileControlAffinity.trailing,
      title: Text(title),
      value: title,
      groupValue: '',
      onChanged: (value) {},
    );
  }
}

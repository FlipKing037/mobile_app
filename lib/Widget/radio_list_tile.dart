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
        RadioListTile(
          contentPadding: EdgeInsetsDirectional.all(0),
          controlAffinity: ListTileControlAffinity.trailing,
          title: const Text('Customer was late more then 20 min'),
          value: 'Customer was late more then 20 min',
          groupValue: reason,
          onChanged: (value) {
            reason = value;
            setState(() {});
          },
        ),
        RadioListTile(
          controlAffinity: ListTileControlAffinity.trailing,
          title: const Text('Customer does not answer'),
          value: 'Customer does not answer',
          groupValue: reason,
          onChanged: (value) {
            reason = value;
            setState(() {});
          },
        ),
        RadioListTile(
          controlAffinity: ListTileControlAffinity.trailing,
          title: const Text('Customer refuse to receive the car'),
          value: 'Customer refuse to receive the car',
          groupValue: reason,
          onChanged: (value) {
            reason = value;
            setState(() {});
          },
        ),
        RadioListTile(
          controlAffinity: ListTileControlAffinity.trailing,
          title: const Text('Customer did not provide the ID'),
          value: 'Customer did not provide the ID',
          groupValue: reason,
          onChanged: (value) {
            reason = value;
            setState(() {});
          },
        ),
        RadioListTile(
          controlAffinity: ListTileControlAffinity.trailing,
          title: const Text('Different Person'),
          value: 'Different Person',
          groupValue: reason,
          onChanged: (value) {
            reason = value;
            setState(() {});
          },
        ),
        RadioListTile(
          contentPadding: EdgeInsetsDirectional.all(0),
          controlAffinity: ListTileControlAffinity.trailing,
          title: const Text('Other'),
          value: 'Other',
          groupValue: reason,
          onChanged: (value) {
            reason = value;
            visible = true;
            setState(() {});
          },
        ),
        Visibility(
          visible: true,
          child: TextFormField(
            keyboardType: TextInputType.multiline,
            maxLines: 3,
            decoration: InputDecoration(
              hintText: 'Add Reason',
              border: const OutlineInputBorder(),
            ),
          ),
        )
      ],
    );
  }
}

class MainRadioListTile extends StatelessWidget {
  const MainRadioListTile({super.key});

  @override
  Widget build(context) {
    return RadioListTile(
      contentPadding: EdgeInsetsDirectional.all(0),
      controlAffinity: ListTileControlAffinity.trailing,
      title: const Text('Customer was late more then 20 min'),
      value: 'Customer was late more then 20 min',
      groupValue: '',
      onChanged: (value) {},
    );
  }
}

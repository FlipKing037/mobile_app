import 'package:flutter/material.dart';
import 'package:mobile_app/Widget/radio_list_tile.dart';
import 'package:mobile_app/Widget/submit_button.dart';

class CancelReason extends StatelessWidget {
  const CancelReason({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Cancel Reason'),
                RadioListTileWidget(),
                SizedBox(
                  height: 38,
                ),
                SubmitButtonWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mobile_app/Widget/radio_list_tile.dart';
import 'package:mobile_app/Widget/submit_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              SizedBox(
                height: 24,
              ),
              Text(
                'Cancel Reason',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 24,
              ),
              RadioListTileWidget(),
              SizedBox(
                height: 38,
              ),
              SubmitButtonWidget()
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mobile_app/Widget/home_view.dart';
import 'package:mobile_app/Widget/radio_list_tile.dart';
import 'package:mobile_app/Widget/submit_button.dart';

class CancelReason extends StatelessWidget {
  const CancelReason({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return const HomeView();
              },
            );
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          child: const Icon(Icons.add)),
    );
  }
}

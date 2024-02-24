import 'package:flutter/material.dart';
import 'package:mobile_app/Widget/home_view.dart';

class CancelReason extends StatelessWidget {
  const CancelReason({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return const SizedBox(
                  height: 650,
                  child: HomeView(),
                );
              },
            );
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          child: const Icon(Icons.add)),
    );
  }
}

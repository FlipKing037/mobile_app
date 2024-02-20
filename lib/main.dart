import 'package:flutter/material.dart';
import 'package:mobile_app/Views/bottomsheet.dart';

void main() {
  runApp(const MobileApp());
}

class MobileApp extends StatelessWidget {
  const MobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CancelReason(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:konnect/src/features/home/presentation/pages/konnect_home.dart';

void main() {
  runApp(const KonnectAPP());
}

class KonnectAPP extends StatelessWidget {
  const KonnectAPP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: KonnectHome(),
    );
  }
}

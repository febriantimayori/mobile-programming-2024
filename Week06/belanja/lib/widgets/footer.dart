import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      height: 50,
      child: const Center(
        child: Text(
          'Febrianti Mayori | 2241720248 | TI-3D',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SeparatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      width: MediaQuery.of(context).size.width,
      height: 10.0,
    );
  }
}
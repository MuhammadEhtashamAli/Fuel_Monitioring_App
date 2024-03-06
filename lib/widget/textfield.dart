import 'package:flutter/material.dart';

class EcomileSearchTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        hintText: 'Search',
        suffixIcon: Icon(Icons.star),
      ),
    );
  }
}

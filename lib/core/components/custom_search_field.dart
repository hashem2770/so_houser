import 'package:flutter/material.dart';
class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    super.key, required this.hintText, required this.width,
  });
  final String hintText;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: TextFormField(
        decoration:  InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 16, color: Colors.grey),
          contentPadding:
          const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          prefixIcon: const Icon(Icons.search),
          prefixIconColor: Colors.grey,
        ),
      ),
    );
  }
}

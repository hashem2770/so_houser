import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.width,
    required this.height, required this.label, this.onPressed,
  });

  final double width;
  final double height;
  final String label;
  final void Function()? onPressed;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        backgroundColor: Colors.black,
        elevation: 8,
        minimumSize: Size(width * 0.8, height * 0.06),
      ),
      child:  Text(
        label,
        style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
    );
  }
}

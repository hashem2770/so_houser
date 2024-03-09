import 'package:flutter/material.dart';
class AppBarButton extends StatelessWidget {
  const AppBarButton({
    super.key, this.onPressed, required this.icon,
  });
  final void Function()? onPressed;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12, width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: IconButton(
          onPressed: onPressed,
          icon:icon ,
        )
    );
  }
}

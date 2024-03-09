import 'package:flutter/material.dart';

class FeaturedAdvertise extends StatelessWidget {
  const FeaturedAdvertise({
    super.key,
    required this.height,
    required this.width, required this.imagePath, required this.offer,
  });

  final double height;
  final double width;
  final String imagePath;
  final String offer;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.2,
      width: width,
      decoration:  BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 4,
            offset: Offset(0, 5),
            spreadRadius: 3,
          ),
        ],
        image: DecorationImage(
          image: AssetImage(
            imagePath,
          ),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
            gradient: LinearGradient(
              colors: [
                Colors.black45,
                Colors.transparent,
              ],
              begin: Alignment.bottomLeft,
            )),
        child:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'Featured Properties',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                offer,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

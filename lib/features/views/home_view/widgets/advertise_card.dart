import 'package:flutter/material.dart';
class AdvertiseCard extends StatelessWidget {
  const AdvertiseCard({
    super.key,
    required this.height,
    required this.width,
    required this.imagePath,
    required this.price,
    required this.placeName,
    required this.location, required this.tag,
  });

  final double height;
  final double width;
  final String imagePath;
  final int price;
  final String location;
  final String placeName;
  final int tag;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            height: height * 0.2,
            width: width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(
                    imagePath,
                  ),
                  fit: BoxFit.fitWidth,
                )),
            child: Stack(
              children: [
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white),
                    child: Text(
                      '\$$price/month',
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                )
              ],
            )),
        SizedBox(height: height * 0.001),
        // address details
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(placeName,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w700)),
          subtitle: Row(children: [
            const Icon(
              Icons.location_on_outlined,
              color: Colors.grey,
              size: 18,
            ),
            const SizedBox(width: 8),
            Text(location,
                style: const TextStyle(color: Colors.grey, fontSize: 18))
          ]),
          trailing: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
                border: Border.all(color: Colors.grey, width: 1)),
            child: Transform.rotate(
              angle: 3.14 / -4,
              child: const Icon(
                Icons.arrow_downward_outlined,
              ),
            ),
          ),
        ),
        SizedBox(height: height * 0.01),
      ],
    );
  }
}

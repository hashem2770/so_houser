import 'package:flutter/material.dart';

import '../../../models/property_model.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.property});

  final PropertyModel property;

  Widget buildSliverAppBar() {
    return SliverAppBar(
        expandedHeight: 400,
        pinned: true,
        stretch: true,
        // backgroundColor: Colors.transparent leads to error
        backgroundColor: Colors.grey,
        flexibleSpace: FlexibleSpaceBar(
          collapseMode: CollapseMode.parallax,
          centerTitle: true,
          title: Text(
            property.title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          background: Image.asset(
            property.imageUrl,
            fit: BoxFit.cover,
          ),
          titlePadding: const EdgeInsets.all(4),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: CustomScrollView(
        slivers: [
          buildSliverAppBar(),
          SliverList(
            delegate: SliverChildListDelegate(
              [
               const SizedBox(
                   height: 28
               ),
               // chips
               Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     // did not bother to extract it as it only appears in this view
                     Chip(
                       backgroundColor: Colors.grey[300],
                       label: Row(
                         children: [
                           const Icon(Icons.bed),
                           const SizedBox(width: 8),
                           Text('${property.beds} Beds'),
                         ],
                       ),
                     ),
                     Chip(
                       backgroundColor: Colors.grey[300],
                       label: Row(
                         children: [
                           const Icon(Icons.bathtub_outlined),
                           const SizedBox(width: 8),
                           Text('${property.baths} Baths'),
                         ],
                       ),
                     ),
                     Chip(
                       backgroundColor: Colors.grey[300],
                       label: Row(
                         children: [
                           const Icon(Icons.zoom_out_map),
                           const SizedBox(width: 8),
                           Text('${property.area} area'),
                         ],
                       ),
                     ),
                   ]),
               Padding(padding: const EdgeInsets.symmetric(horizontal: 12),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   const SizedBox(height: 14),
                   const Text('Details',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                   const SizedBox(height: 8),
                   Text('loram ttf dum text now '*70,style: const TextStyle(fontSize: 16,height: 1.8),),
                 ],
               ),
               ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

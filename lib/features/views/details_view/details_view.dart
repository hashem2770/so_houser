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
              delegate: SliverChildListDelegate([
            Container(
                padding: const EdgeInsets.all(12),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(property.title,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                          )),
                      const SizedBox(height: 80),
                      Text(
                        property.location,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      const SizedBox(height: 80),
                      Text(
                        property.location,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      const SizedBox(height: 80),
                      Text(
                        property.location,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      const SizedBox(height: 80),
                      Text(
                        property.location,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      const SizedBox(height: 80),
                      Text(
                        property.location,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      const SizedBox(height: 80),
                      Text(
                        property.location,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      const SizedBox(height: 80),
                      Text(
                        property.location,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 18),
                      )
                    ]))
          ]))
        ],
      ),
    );
  }
}

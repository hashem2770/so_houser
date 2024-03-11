import 'package:flutter/material.dart';
import 'package:so_houser/features/views/home_view/widgets/advertise_card.dart';
import 'package:so_houser/features/views/home_view/widgets/app_bar_button.dart';
import 'package:so_houser/features/views/home_view/widgets/featured_advertise.dart';
import 'package:so_houser/models/property_model.dart';

import '../../../core/components/custom_search_field.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: width * 0.03),
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(28),
        ),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(height: height * 0.03),
                  // custom app bar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// app bar
                      AppBarButton(
                          icon: const Icon(Icons.menu), onPressed: () {}),
                      const Column(
                        children: [
                          Text('Current Location',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black38,
                              )),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_pin,
                                color: Colors.blue,
                                size: 20,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Sohag, Egypt',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                      AppBarButton(
                          icon: const Icon(Icons.tune), onPressed: () {}),
                    ],
                  ),

                  SizedBox(height: height * 0.04),

                  /// search bar
                  CustomSearchField(
                    hintText: 'Search for properties',
                    width: width - (width * 0.14),
                  ),
                  SizedBox(height: height * 0.04),

                  /// featured properties advertise
                  FeaturedAdvertise(
                      height: height,
                      width: width,
                      imagePath: 'assets/images/house_2.jpg',
                      offer: '*Get 5% off on your first booking'),

                  SizedBox(height: height * 0.04),

                  /// properties offers
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: PropertyModel.properties.length,
                (context, index) {
                  final property = PropertyModel.properties[index];
                  return AdvertiseCard(
                    height: height,
                    width: width,
                    imagePath: property.imageUrl,
                    location: property.location,
                    placeName: property.title,
                    price: property.price,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/*
Column(

            children: [
              SizedBox(height: height * 0.03),
              // custom app bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// app bar
                  AppBarButton(icon: const Icon(Icons.menu), onPressed: () {}),
                  const Column(
                    children: [
                      Text('Current Location',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black38,
                          )),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_pin,
                            color: Colors.blue,
                            size: 20,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Sohag, Egypt',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                  AppBarButton(icon: const Icon(Icons.tune), onPressed: () {}),
                ],
              ),

              SizedBox(height: height * 0.04),

              /// search bar
              const CustomSearchField(hintText: 'Search for properties'),
              SizedBox(height: height * 0.04),

              /// featured properties advertise
              FeaturedAdvertise(
                  height: height,
                  width: width,
                  imagePath: 'assets/images/house_2.jpg',
                  offer: '*Get 5% off on your first booking'),

              SizedBox(height: height * 0.04),

              /// properties offers
              ListView.separated(
                itemBuilder: (context, index) {
                  final property = PropertyModel.properties[index];
                  return AdvertiseCard(
                    height: height,
                    width: width,
                    imagePath: property.imageUrl,
                    location: property.location,
                    placeName: property.title,
                    price: property.price,
                  );
                },
                separatorBuilder: (context, index) =>
                    SizedBox(height: height * 0.02),
                itemCount: PropertyModel.properties.length,
              )
            ],
          )*/

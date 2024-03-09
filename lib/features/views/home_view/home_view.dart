import 'package:flutter/material.dart';
import 'package:so_houser/features/views/home_view/widgets/app_bar_button.dart';

import '../../../core/components/custom_search_field.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(28),
        ),
        child: Column(
          children: [
            SizedBox(height: height * 0.05),
            // custom app bar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
            // search bar
            SizedBox(height: height * 0.04),
            const CustomSearchField(hintText: 'Search for properties'),
          ],
        ),
      ),
    );
  }
}

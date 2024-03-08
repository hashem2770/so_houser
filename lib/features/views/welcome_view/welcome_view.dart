import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(28),
                  child: Image.asset(
                    'assets/images/house_1.jpg',
                    height: height * 0.6,
                    width: width,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              const Positioned(
                top: 30,
                left: 30,
                right: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.home_filled, size: 40, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      'SoHouser',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: width * 0.07),
          const Text(
            'Discover Dream House from Smartphone',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: width * 0.02),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Text(
              'Lorem ipsum dolor sit amet' * 3,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, color: Colors.black45),
            ),
          ),
          SizedBox(height: width * 0.07),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              backgroundColor: Colors.black,
              elevation: 8,
              minimumSize: Size(width * 0.8, height * 0.06),
            ),
            child: const Text(
              'Register Now',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(height: width * 0.02),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              'Already have an account?',
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
              ),
              child: const Text(
                'Login',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
          ]),
        ],
      ),
    ));
  }
}

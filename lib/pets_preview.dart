import 'package:flutter/material.dart';

class PetsPreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meet the Pets!'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/menu_bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Container(
              width: 500,
              height: 400, // Adjusted height to accommodate all images and names
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.7),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    Image.asset(
                      'assets/dog.png',
                      height: 100, // Adjust the height as needed
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Dog', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 20),
                    Image.asset(
                      'assets/cat.png',
                      height: 100, // Adjust the height as needed
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Cat', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 20),
                    Image.asset(
                      'assets/bird.png',
                      height: 100, // Adjust the height as needed
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Bird', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 20),
                    Image.asset(
                      'assets/bunny.png',
                      height: 100, // Adjust the height as needed
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Bunny', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 20),
                    Image.asset(
                      'assets/hamster.png',
                      height: 100, // Adjust the height as needed
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Hamster', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 20),
                    Image.asset(
                      'assets/capybara.png',
                      height: 100, // Adjust the height as needed
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Capybara', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 20),
                    Image.asset(
                      'assets/panda.png',
                      height: 100, // Adjust the height as needed
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Panda', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 20),
                    Image.asset(
                      'assets/hippopotamus.png',
                      height: 100, // Adjust the height as needed
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Hippopotamus', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

// This page shows all available pets that users can choose from
class PetsPreview extends StatelessWidget {
  PetsPreview({super.key});

  // List of all available pets with their images and names
  // STUDENTS: You can add more pets here by following the same pattern!
  final List<Widget> _pets = [
    // Helper function to create a pet preview widget
    _createPetPreview('Dog', 'assets/dog.png'),
    _createPetPreview('Cat', 'assets/cat.png'),
    _createPetPreview('Bird', 'assets/bird.png'),
    _createPetPreview('Bunny', 'assets/bunny.png'),
    _createPetPreview('Hamster', 'assets/hamster.png'),
    _createPetPreview('Capybara', 'assets/capybara.png'),
    _createPetPreview('Panda', 'assets/panda.png'),
    _createPetPreview('Hippopotamus', 'assets/hippopotamus.png'),
  ];

  // Helper function to create consistent pet preview widgets
  static Widget _createPetPreview(String name, String imagePath) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Image.asset(imagePath, height: 100),
        Container(
          padding: const EdgeInsets.all(8.0),
          child: Text(name,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Top bar of the app
      // 💖STUDENTS: Try changing the color of the App Bar!💖
      appBar: AppBar(
        title: const Text('Meet the Pets!'),
      ),

      body: Stack(
        children: [
          // Background Image
          // STUDENTS: Try changing the background image by modifying 'menu_bg.png'!
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/menu_bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Main content container
          // 💖STUDENTS: Try modifying these values to change the appearance!💖
          Center(
            child: Container(
              width: 500,
              height: 400,
              decoration: BoxDecoration(
                color: Colors.white, // Try changing the opacity!
                borderRadius:
                    BorderRadius.circular(15), // Try different radius values!
                border: Border.all(color: Colors.black, width: 2),
              ),

              // Scrollable list of pets
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _pets,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

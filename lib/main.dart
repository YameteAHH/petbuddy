import 'package:flutter/material.dart';
import 'package:my_pet_buddy/pet_adoption_page.dart';
import 'package:my_pet_buddy/pet_selection_page.dart';

// Main page of the app that shows the menu
class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          // Background Image
          // STUDENTS: Try changing the background image!
          _buildBackground(),

          // Main Content Container
          Center(
            child: _buildMainContainer(),
          ),
        ],
      ),
    );
  }

  // Creates the background container
  Widget _buildBackground() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/menu_bg.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  // Creates the main content container with logo and buttons
  Widget _buildMainContainer() {
    return Container(
      width: 500,
      height: 400,
      decoration: BoxDecoration(
        // STUDENTS: Try changing these values!
        color: Colors.white.withOpacity(0.7),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            // App Logo
            Image.asset('assets/logo.png', height: 200),
            const SizedBox(height: 20),

            // Adopt Now Button
            _buildButton(
              text: 'Adopt Now!',
              color: const Color.fromARGB(255, 0, 0, 0),
              onPressed: (context) => _navigateToPage(context, const PetMain()),
            ),

            const SizedBox(height: 20),

            // Meet the Pets Button
            _buildButton(
              text: 'Meet the Pets!',
              color: const Color.fromARGB(255, 183, 173, 58),
              onPressed: (context) => _navigateToPage(context, PetsPreview()),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to create consistent buttons
  // 💖STUDENTS: Try modifying the button styles!💖
  Widget _buildButton({
    required String text,
    required Color color,
    required void Function(BuildContext) onPressed,
  }) {
    return Builder(
      builder: (context) => ElevatedButton(
        onPressed: () => onPressed(context),
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
          backgroundColor: color,
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  // Helper method to navigate to a new page
  void _navigateToPage(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }
}

// Entry point of the application
void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomePage(title: 'My Pet Buddy'),
  ));
}

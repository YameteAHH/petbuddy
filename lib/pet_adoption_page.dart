import 'package:flutter/material.dart';
import 'dart:math';

// Page where users can "adopt" a pet by tapping the heart button
class PetMain extends StatefulWidget {
  const PetMain({super.key});

  @override
  _PetMainState createState() => _PetMainState();
}

class _PetMainState extends State<PetMain> with SingleTickerProviderStateMixin {
  int _pressCount = 0;
  late int _targetPressCount;
  bool _showConnectionImage = false;
  late AnimationController _heartAnimationController;

  // Initialize the random number of taps needed
  @override
  void initState() {
    super.initState();
    // 💖STUDENTS: Try changing these numbers to make it easier or harder!💖
    _targetPressCount =
        Random().nextInt(21) + 30; // Random number between 30 and 50
    _heartAnimationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _heartAnimationController.dispose();
    super.dispose();
  }

  // Increment the tap counter and check if we've reached the target
  void _incrementPressCount() {
    setState(() {
      _pressCount++;
      _heartAnimationController.forward().then((_) {
        _heartAnimationController.reverse();
      });
      if (_pressCount >= _targetPressCount) {
        _showConnectionImage = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Container(
        decoration: _buildBackground(),
        child: Center(
          child: _buildMainContainer(),
        ),
      ),
    );
  }

  // Builds the top app bar
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      // 💖STUDENTS: Try changing the color of the App Bar!💖
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context),
      ),
      // 💖STUDENTS: Try changing the title text!💖
      title: const Text('-_- !rc ^-^'),
    );
  }

  // Creates the background decoration
  BoxDecoration _buildBackground() {
    return const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/menu_bg.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  // Builds the main content container
  Widget _buildMainContainer() {
    return Container(
      width: 500,
      height: 500,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.7),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // App Logo
          Image.asset('assets/logo.png', height: 100),
          const SizedBox(height: 20),

          // Pet Image or Connection Image
          Image.asset(
            _showConnectionImage
                ? 'assets/connection.png'
                // 💖 STUDENTS: Change 'capybara.png' to try different pets! 💖
                : 'assets/capybara.png',
            height: _showConnectionImage ? 300 : 200,
          ),

          // Heart Button (only shown before connection)
          if (!_showConnectionImage) ...[
            const SizedBox(height: 20),
            // Progress indicator
            Text(
              'Connection Progress: ${((_pressCount / _targetPressCount) * 100).toInt()}%',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            LinearProgressIndicator(
              value: _pressCount / _targetPressCount,
              backgroundColor: Colors.grey[300],
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.red),
            ),
            const SizedBox(height: 20),
            // Animated heart button
            ScaleTransition(
              scale: Tween(begin: 1.0, end: 1.5).animate(
                CurvedAnimation(
                  parent: _heartAnimationController,
                  curve: Curves.easeInOut,
                ),
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 40,
                ),
                onPressed: _incrementPressCount,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Taps needed: ${_targetPressCount - _pressCount}',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ],
      ),
    );
  }
}

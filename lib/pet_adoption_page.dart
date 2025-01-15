import 'package:flutter/material.dart';
import 'dart:math';

class PetMain extends StatefulWidget {
  const PetMain({super.key});

  @override
  _PetMainState createState() => _PetMainState();
}

// Randomizer for the number of Button taps which is between 30 to 50 taps.
class _PetMainState extends State<PetMain> {
  int _pressCount = 0;
  late int _targetPressCount;
  bool _showConnectionImage = false;

  @override
  void initState() {
    super.initState();
    _targetPressCount = Random().nextInt(21) + 30; 
  }

  void _incrementPressCount() {
    setState(() {
      _pressCount++;
      if (_pressCount >= _targetPressCount) {
        _showConnectionImage = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

// ❤️ AppBar of the Pet Adoption Page ❤️
      appBar: AppBar(
        backgroundColor: Colors.white,

// Back Button inside the AppBar to return to the menu screen
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

// ❤️ Text at the top of the page, which is called the AppBar. ❤️        
        title: const Text('-_- Take Care! ^-^'), ),
      
// Background image of the pet adoption page, same to the menu screen.
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/menu_bg.png'),
            fit: BoxFit.cover,
          ),
        ),

// Box container for the logo, pet, and heart button.
        child: Center(
          child: Container(
            width: 500,
            height: 500, 
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.7),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black, width: 2),
            ),
            
// Logo image of the app and the "connection form" image that appears after the random number of taps is reached.
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo.png', 
                  height: 100, 
                ),
                const SizedBox(height: 20),
                Image.asset(
                  _showConnectionImage ? 'assets/connection.png' :

// ❤️ INSERT YOUR CHOSEN PET BUDDY HERE ❤️                  
                   'assets/dog.png', 
// Yes Right here! 
                   
                  height: _showConnectionImage ? 300 : 200, 
                ),
                if (!_showConnectionImage) const SizedBox(height: 20),
                if (!_showConnectionImage) IconButton(

// ❤️ YOU CAN ADJUST THE HEART BUTTON HERE ❤️                
                  icon: const Icon(Icons.favorite, color: Colors.red, size: 40),
// Yes Right here!

                  onPressed: _incrementPressCount,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
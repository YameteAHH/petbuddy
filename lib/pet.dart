import 'package:flutter/material.dart';
import 'dart:math';

class PetMain extends StatefulWidget {
  @override
  _PetMainState createState() => _PetMainState();
}

class _PetMainState extends State<PetMain> {
  int _pressCount = 0;
  late int _targetPressCount;
  bool _showConnectionImage = false;

  @override
  void initState() {
    super.initState();
    _targetPressCount = Random().nextInt(21) + 30; // Random number between 30 and 50
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
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('-_- Take Care! ^-^'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/menu_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            width: 500,
            height: 500, // Fixed height for the container
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.7),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo.png', // Path to your logo image
                  height: 100, // Adjust the height as needed
                ),
                const SizedBox(height: 20),
                Image.asset(
                  _showConnectionImage ? 'assets/connection.png' :

// ❤️ INSERT YOUR CHOSEN PET BUDDY HERE ❤️                  
                   'assets/cat.png', 
// Yes Right here! 
                   
                  height: _showConnectionImage ? 300 : 200, // Adjust the height as needed
                ),
                const SizedBox(height: 20),
                IconButton(
                  icon: Icon(Icons.favorite, color: Colors.red, size: 40),
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
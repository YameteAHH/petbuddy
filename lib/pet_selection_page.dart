import 'package:flutter/material.dart';

class PetsPreview extends StatelessWidget {
  PetsPreview({super.key});

  final List<Widget> _pets = [
    const SizedBox(height: 20),
                    Image.asset(
                      'assets/dog.png',
                      height: 100, 
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text('Dog', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 20),
                    Image.asset(
                      'assets/cat.png',
                      height: 100, 
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text('Cat', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 20),
                    Image.asset(
                      'assets/bird.png',
                      height: 100, 
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text('Bird', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 20),
                    Image.asset(
                      'assets/bunny.png',
                      height: 100, 
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text('Bunny', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 20),
                    Image.asset(
                      'assets/hamster.png',
                      height: 100, 
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text('Hamster', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 20),
                    Image.asset(
                      'assets/capybara.png',
                      height: 100, 
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text('Capybara', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 20),
                    Image.asset(
                      'assets/panda.png',
                      height: 100, 
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text('Panda', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 20),
                    Image.asset(
                      'assets/hippopotamus.png',
                      height: 100, 
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text('Hippopotamus', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 20),
  ];

  @override
  Widget build(BuildContext context) {
// Text at the top of the page, which is called the AppBar.
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meet the Pets!'),
      ),

// Background image of the pet selection page, same to the menu screen.
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/menu_bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        
// ❤️ Box container for the preview of the pets ❤️
          Center(
            child: Container(
              width: 500,
              height: 400, 
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.7),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black, width: 2),
              ),

// Preview of the pets available for the adoption.             
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
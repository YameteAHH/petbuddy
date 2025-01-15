import 'package:flutter/material.dart';
import 'package:my_pet_buddy/pet_adoption_page.dart';
import 'package:my_pet_buddy/pet_selection_page.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(

// Background image of the menu screen
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/menu_bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          
// Box container for the logo and buttons
          Center(
            child: Container(
              width: 500,
              height: 400,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.7),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black, width: 2),
              ),
 
 // Logo of the app             
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    Image.asset(
                      'assets/logo.png',
                      height: 200,
                    ),
                    const SizedBox(height: 20),
                    
 // ❤️ Adopt Now Button and its functionality ❤️                   
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PetMain()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 15,
                        ),
                        backgroundColor: Colors.deepPurple,
                      ),
                      child: const Text(
                        'Adopt Now!',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ), 
                      ),
                    ),
                      
                    const SizedBox(height: 20), 
                    
 // ❤️  Meet the Pets Button and its functionality ❤️                  
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PetsPreview()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 15,
                        ),
                        backgroundColor: Colors.deepPurple,
                      ),
                      child: const Text(
                        'Meet the Pets!',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
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

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomePage(title: 'My Pet Buddy'),
  ));
}
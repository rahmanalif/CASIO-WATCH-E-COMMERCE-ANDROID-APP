import 'package:flutter/material.dart';
import 'package:okay/Pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'lib/Image/CASIO.png',
                  height: 320,
                  scale: 8,
                ),
              ),

              const SizedBox(height: 20,),

              // title
              const Text(
                'Wubba lubba Dub Dub',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),

              const SizedBox(height: 30,),

              // subtitle
              const Text(
                'Bhai kisu ekta',
                style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 63, 62, 62)),
                textAlign: TextAlign.center, // added textAlign for centering
              ),

              const SizedBox(height: 20,),

              // start button
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(25),
                  child: const Text(
                    'SHOP NOW',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                  ),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
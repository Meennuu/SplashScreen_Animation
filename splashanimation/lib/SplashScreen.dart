import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:foodui/HomeScreen.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: SplashContent(),
      nextScreen: const HomeScreen(),
      splashIconSize: 700,
      backgroundColor: const Color.fromARGB(255, 113, 163, 250),
      splashTransition: SplashTransition.scaleTransition,
    );
  }
}

class SplashContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Journey Mate...",
            style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto'),
          ),
          const SizedBox(
            height: 60,
          ),
          FadeTransition(
            opacity: _animationController(context),
            child: LottieBuilder.asset("assets/Lottie/Animation.json"),
          ),
          const SizedBox(
            height: 90,
          ),
          const Text(
            "Find your next great escape with us!",
            style: TextStyle(
                fontSize: 18,
                color: Colors.white70,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 38,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.blue,
                    backgroundColor: Colors.white, // Text color
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    shadowColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      side: BorderSide.none,
                    ),
                    elevation: 8),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Let's Go",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  AnimationController _animationController(BuildContext context) {
    return AnimationController(
      duration: const Duration(seconds: 1),
      vsync: Navigator.of(context),
    )..forward();
  }
}

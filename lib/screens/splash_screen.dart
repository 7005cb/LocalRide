import 'package:flutter/material.dart';
import '../constants/colors.dart';
import 'onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Navigation trigger (runs only once after first frame is built)
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 3), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const OnboardingScreen()),
        );
      });
    });

    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo with text overlay using Stack
            Stack(
              alignment: Alignment.center,
              children: [
                // Logo from assets
                Image.asset(
                  'assets/images/logo.jpg',
                  height: 500,
                  width: 500,
                  fit: BoxFit.contain,
                ),
                // Text positioned at the bottom of the logo
                Positioned(
                  bottom: 110,
                  child: Column(
                    children: [
                      // App name
                      Text(
                        "NeaRide",
                        style: TextStyle(
                          color: AppColors.primaryGreen,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                          shadows: [
                            Shadow(
                              offset: Offset(0, 2),
                              blurRadius: 4,
                              color: Colors.black26,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 0),
                      // Tagline
                      Text(
                        "Your Ride is just Near.",
                        style: TextStyle(
                          color: AppColors.textGrey,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          shadows: [
                            Shadow(
                              offset: Offset(0, 1),
                              blurRadius: 3,
                              color: Colors.black12,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

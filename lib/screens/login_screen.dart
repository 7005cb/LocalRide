import 'package:flutter/material.dart';
import '../constants/colors.dart'; // ✅ Import your color file

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),

            // ✅ Welcome Back Text
            const Center(
              child: Text(
                "Welcome Back!",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryGreen,
                ),
              ),
            ),
            const SizedBox(height: 40),

            // Email field
            const Text(
              "Email",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter Your Email",
                hintStyle: TextStyle(color: AppColors.textGrey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Password field
            const Text(
              "Password",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter Your Password",
                hintStyle: TextStyle(color: AppColors.textGrey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 10),

            // Forgot Password
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: AppColors.primaryGreen,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Login Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryGreen,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 16, color: AppColors.white),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Divider OR
            const Row(
              children: [
                Expanded(child: Divider(thickness: 1)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text("OR"),
                ),
                Expanded(child: Divider(thickness: 1)),
              ],
            ),
            const SizedBox(height: 20),

            // ✅ Social login buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Facebook
                _circleSocialButton(
                  icon: Icons.facebook,
                  color: Colors.blue,
                  onPressed: () {},
                ),

                // Apple
                _circleSocialButton(
                  icon: Icons.apple,
                  color: Colors.black,
                  onPressed: () {},
                ),

                // Google (use asset)
                _circleSocialButton(
                  assetPath: "assets/images/google.png",
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 30),

            // Signup link
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don’t have an account? "),
                GestureDetector(
                  onTap: () {
                    // ✅ Navigate to Signup screen
                  },
                  child: const Text(
                    "Signup",
                    style: TextStyle(
                      color: AppColors.primaryGreen,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          AppColors.primaryGreen, // ✅ Green underline
                      decorationThickness: 2, // ✅ Bold underline
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // ✅ Social Button Widget (supports both icon & asset)
  static Widget _circleSocialButton({
    IconData? icon,
    String? assetPath,
    Color? color,
    required VoidCallback onPressed,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.primaryGreen, width: 2),
      ),
      child: IconButton(
        icon:
            icon != null
                ? Icon(icon, size: 28, color: color ?? AppColors.textBlack)
                : Image.asset(assetPath!, width: 28, height: 28),
        onPressed: onPressed,
      ),
    );
  }
}

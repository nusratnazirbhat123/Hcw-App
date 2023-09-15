import 'package:flutter/material.dart';

class CustomErrorDialog extends StatelessWidget {
  final String errorMessage;
  final VoidCallback onClosePressed;

  CustomErrorDialog({
    required this.errorMessage,
    required this.onClosePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Error'),
            // Image.asset(
            //   'assets/error.png', // Replace with your error image asset path
            //   width: 80.0,
            //   height: 80.0,
            //   fit: BoxFit.cover,
            // ),
            const SizedBox(height: 24.0),
            const Text(
              'Something went wrong!',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8.0),
            Text(
              errorMessage,
              style: const TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: onClosePressed,
              child: const Text('Close'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Use your preferred color here
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

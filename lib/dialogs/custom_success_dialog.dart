import 'package:flutter/material.dart';

class CustomSuccessDialog extends StatelessWidget {
  final String successMessage;
  final VoidCallback onClosePressed;
  final VoidCallback onTaskComplete;

  CustomSuccessDialog({
    required this.successMessage,
    required this.onClosePressed,
    required this.onTaskComplete,
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
            Text('Success'),
            // Image.asset(
            //   'assets/success.png', // Replace with your success image asset path
            //   width: 80.0,
            //   height: 80.0,
            //   fit: BoxFit.cover,
            // ),
            const SizedBox(height: 24.0),
            const Text(
              'Success!',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8.0),
            Text(
              successMessage,
              style: const TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                onClosePressed();
                onTaskComplete(); // Perform your task here when the dialog is closed
              },
              child: const Text('Close'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // Use your preferred color here
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
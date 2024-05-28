import 'package:flutter/material.dart';

import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Dialog and Snackbar Example',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Example"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Show Snackbar
            Get.snackbar(
              'Snackbar Title', // Snackbar title
              'This is a snackbar message', // Snackbar message
              backgroundColor: Colors.grey[900], // Background color
              snackPosition: SnackPosition.BOTTOM, // Snackbar position
              duration: Duration(seconds: 3), // Duration for which Snackbar will be visible
              colorText: Colors.white, // Text color
            );
          },
          child: Text('Show Snackbar'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Show BottomSheet
          Get.bottomSheet(
            Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'BottomSheet Title',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'This is a bottom sheet message.',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Get.back(); // Close BottomSheet
                      },
                      child: Text('Close'),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

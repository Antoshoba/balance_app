import 'package:flutter/material.dart';

class StickyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 80), // Add space for the button
          child: Column(
            children: List.generate(
              20,
              (index) => ListTile(
                leading: Icon(Icons.label),
                title: Text("List Item ${index + 1}"),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            color: Colors.blue, // Optional background for better visibility
            padding: EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                // Button action
                print("Sticky Button Pressed");
              },
              child: Text("Sticky Button"),
            ),
          ),
        ),
      ],
    );
  }
}

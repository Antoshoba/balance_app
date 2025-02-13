import 'package:flutter/material.dart';

class PeriodDescriptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Periods'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LinearProgressIndicator(
              value: 0.5,
              backgroundColor: Colors.grey[300],
              color: Colors.teal,
            ),
            SizedBox(height: 16),
            Text(
              "How would you describe your periods?",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Column(
              children: [
                RadioListTile<String>(
                  title: Text("They're regular"),
                  value: 'regular',
                  groupValue: 'irregular',
                  onChanged: (value) {},
                ),
                RadioListTile<String>(
                  title: Text("They're erratic or irregular"),
                  value: 'irregular',
                  groupValue: 'regular',
                  onChanged: (value) {},
                ),
                RadioListTile<String>(
                  title: Text("I don't have periods"),
                  value: 'no_periods',
                  groupValue: 'no_periods',
                  onChanged: (value) {},
                ),
              ],
            ),
            Spacer(),
            Text(
              "Your currently selected answer will disable the Period Journal feature.",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.blue,
              ),
              child: Text("Next: HRT"),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Save and continue later"),
            ),
          ],
        ),
      ),
    );
  }
}

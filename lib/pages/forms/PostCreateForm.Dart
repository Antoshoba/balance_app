import 'package:flutter/material.dart';
import 'package:balance_app/pages/screens/BalanceAppScreen.Dart';
import 'package:balance_app/pages/screens/OnboardingPage.Dart';
import 'package:balance_app/pages/forms/ResetPasswordPage.Dart';
import 'package:balance_app/pages/screens/AddTags.Dart';
import 'package:balance_app/pages/screens/ExperimentsPopup.Dart';
import 'package:balance_app/pages/screens/FeedBackPage.Dart';
import 'package:balance_app/pages/screens/OnboardingPage.Dart';

class PostCreateForm extends StatefulWidget {
  @override
  _PostCreateFormState createState() => _PostCreateFormState();
}

class _PostCreateFormState extends State<PostCreateForm> {
  // Track if the dropdown is open or closed
  bool _isDropdownOpen = false;
  bool _isSwitched = true;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OnboardingPage()),
            );
          },
        ),
        title: Text(
          'Create Story',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF0b5369),
        centerTitle: true,
        toolbarHeight: 100.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(height: 2),
            Row(
              children: [
                Text(
                  'Story title',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0b5369),
                  ),
                ),
                Text(
                  ' *',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              "Briefly summarise your story",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF0b5369),
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: 'Tap to start typing',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Your Story',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0b5369),
                  ),
                ),
                Text(
                  ' *',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text(
      'Scroll down for tips on what to write about',
      style: TextStyle(
        fontSize: 16,
        color: Color(0xFF0b5369),
        fontStyle: FontStyle.italic,
      ),
    ),
    SizedBox(width: 5), 
    Icon(
      Icons.help_outline, 
      color: Colors.white, 
      size: 20,  
    ),
  ],
),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: 'Tap to start typing',
                border: OutlineInputBorder(),
              ),
              maxLines: 10,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddTags()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFE6E6FF),
                minimumSize: Size(double.infinity, 50),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text(
                'Tap to select tags',
                style: TextStyle(fontSize: 18, color: Color(0xFFB793E6)),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(40),
              decoration: BoxDecoration(
                color: Color(0xFFE6E6FF),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Link to your Community profile',
                    style: TextStyle(fontSize: 20, color: Color(0xFF0b5369)),
                  ),
                 Switch(
  value: _isSwitched,
  onChanged: (bool value) {
    setState(() {
      _isSwitched = value;
    });
  },
  activeColor: Colors.white,          
  activeTrackColor: Color(0xFF99FFEB),  
  inactiveThumbColor: Colors.grey,      
  inactiveTrackColor: Color(0xFFD3D3D3), 
)
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Turn this toggle off to post your story anonymously. Leave this toggle on to show your username on your story and display it on your community profile.',
              style: TextStyle(fontSize: 14, color: Color(0xFF0b5369)),
            ),
            SizedBox(height: 20),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text(
              'Not sure what to write about?',
              style: TextStyle(fontSize: 24, color: Color(0xFF0b5369)),
            ),
                IconButton(
                  icon: Icon(
                    _isDropdownOpen
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down, // Toggle between up and down
                    color: Color(0xFF0b5369),
                  ),
                  onPressed: () {
                    setState(() {
                      _isDropdownOpen = !_isDropdownOpen; // Toggle state
                    });
                  },
                ),
              ],
            ),
           
            if (_isDropdownOpen)
             Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: Text(
      'Healthcare Professionals:\nDescribe your experiences with healthcare professionals so far.',
      style: TextStyle(
        fontSize: 18,
        color: Color(0xFF0b5369),
      ),
    ),
  ),
                if (_isDropdownOpen)
                 Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: Text(
      'HRT (Hormone Replacement Therapy)\nExplain your experiences with HRT, if you have had any.',
      style: TextStyle(
        fontSize: 18,
        color: Color(0xFF0b5369),
      ),
    ),
  ),
                if (_isDropdownOpen)
                 Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: Text(
      'Lifestyle changes\nHave you made any or attempted to make any lifestyle changes? Explain your experience.',
      style: TextStyle(
        fontSize: 18,
        color: Color(0xFF0b5369),
      ),
    ),
  ), 
   if (_isDropdownOpen)
                 Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: Text(
      'Work life\nDescribe your experiences in the workplace during your perimenopause/menopause journey.',
      style: TextStyle(
        fontSize: 18,
        color: Color(0xFF0b5369),
      ),
    ),
  ),
   if (_isDropdownOpen)
                 Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: Text(
      'Words of wisdom\nShare any advice, or learnings from your experience with the community',
      style: TextStyle(
        fontSize: 18,
        color: Color(0xFF0b5369),
      ),
    ),
  ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF4C48B7),
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text(
                'Post my story',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

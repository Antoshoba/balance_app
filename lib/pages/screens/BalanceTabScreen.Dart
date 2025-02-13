
import 'package:flutter/material.dart';
import 'package:balance_app/pages/screens/BalanceAppScreen.dart';
import 'ExpandableSection.dart';
import 'package:balance_app/widgets/CustomCheckbox.dart';
import 'package:balance_app/pages/screens/TermsAndConditionsPage.dart';
import 'package:balance_app/pages/forms/CheckEmailPage.dart';
import 'package:balance_app/pages/screens/PersonalDataInfoPage.dart';
import 'package:balance_app/pages/forms/CreateAccountForm.dart';

class BalanceTabScreen extends StatefulWidget {
  const BalanceTabScreen({Key? key}) : super(key: key);

  @override
  State<BalanceTabScreen> createState() => _BalanceTabScreenState();
}

class _BalanceTabScreenState extends State<BalanceTabScreen> {
  int selectedIndex = 0;
  bool isTermsAccepted = false;
  bool isPrivacyAccepted = false;
  bool isTermsAccepted1 = false;
  bool isPrivacyAccepted1 = false;
  bool isImprovingHealthcare = false;
  bool isEmail = false;
  final int totalTabs = 4; 

   void handleButtonPress(int index) {
    setState(() {
      selectedIndex = index;
    });
    print("Button $index pressed!");
  }

  @override
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BalanceAppScreen()),
            );
          },
        ),
        title: const Text(
          'Sign Up',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF0b5369),
        centerTitle: true,
        toolbarHeight: 70.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Horizontal Tabs
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(4, (index) {
                return GestureDetector(
                  onTap: () {
                    handleButtonPress(index);
                    // setState(() {
                    //   selectedIndex = index;
                    // });
                    print("Hello, Flutter! $selectedIndex");
                  },
                  child: Container(
                    height: 4,
                    width: MediaQuery.of(context).size.width * 0.2,
                    color: selectedIndex == index ? Colors.teal : Colors.grey,
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  ),
                );
              }),
            ),
            const SizedBox(height: 20),

            // Tab Content
            IndexedStack(
              index: selectedIndex,
              children: [
                // Tab 1
 Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Checkbox for Terms & Conditions
          CustomCheckbox(
            value: isTermsAccepted,
            onChanged: (value) {
              setState(() {
                isTermsAccepted = value ?? false;
                isTermsAccepted1 = false;
              });
            },
            label: 'I have read and agreed to the\nterms and conditions',
            activeColor: Colors.purple,
            borderColor: Colors.white,
            validate: !isTermsAccepted ? isTermsAccepted1 : false,
          ),
          const SizedBox(height: 10),

          // Terms and Conditions Link
          GestureDetector(
            onTap: () {
              Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => TermsAndConditionsPage()),
);
              // ScaffoldMessenger.of(context).showSnackBar(
              //   const SnackBar(
              //     content: Text('View Terms and Conditions clicked!'),
              //   ),
              // );
            },
            child: const Center(
              child: Text(
                'View Terms and Conditions',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),

          // Description Section
          const Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'For the ',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0b5369),
                  ),
                ),
                TextSpan(
                  text: 'balance',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Color(0xFF0b5369),
                  ),
                ),
                TextSpan(
                  text: ' app to:',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0b5369),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),

          Text.rich(
            TextSpan(
              style: const TextStyle(fontSize: 18, height: 1.5),
              children: [
                const TextSpan(
                  text: '• Provide you with health information\n and support\n\n',
                ),
                const TextSpan(
                  text: '• Enable you to log your health\n information within a journal\n\n',
                ),
                const TextSpan(
                  text: '• Allow you to participate in the\n ',
                ),
                const TextSpan(
                  text: 'balance',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text:
                      ' community if you choose to\n do so\n\nWe need to use the personal data you\nchoose to share with us, including\ndata relating to your health.\n\nWe assure, in the process of transferring\ndata, that the data will not be\nintercepted, modified, or corrupted\nduring transit.',
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Checkbox for Data Use Agreement
          CustomCheckbox(
            value: isPrivacyAccepted,
            onChanged: (value) {
              setState(() {
                isPrivacyAccepted = value ?? false;
                isPrivacyAccepted1 = false;
              });
            },
            label: 'I accept that you may use\nthe data I share for the above\npurposes',
            activeColor: Colors.purple,
            borderColor: Colors.white,
            validate: !isPrivacyAccepted ? isPrivacyAccepted1 : false,
          ),
          const SizedBox(height: 10),

          // Link for Data Information
          GestureDetector(
            onTap: () {
              Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => PersonalDataInfoPage()),
);
              // ScaffoldMessenger.of(context).showSnackBar(
              //   const SnackBar(
              //     content: Text('What personal data will you ask me for?'),
              //   ),
              // );
            },
            child: const Center(
              child: Text(
                'What personal data will you ask\nme for?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
           const SizedBox(height: 30),

          // Description Section
          const Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Improving healthcare',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0b5369),
                  ),
                ),
              
             
              ],
            ),
          ),
          const SizedBox(height: 10),

          Text.rich(
            TextSpan(
              style: const TextStyle(fontSize: 18, height: 1.5),
              children: [
                const TextSpan(
                  text: '* Optional\n\n',
                ),
               
                const TextSpan(
                  text: 'We may sometimes work with health\norganisations to improve menopause\ncare across the world.\n\n',
                ),
                const TextSpan(
                  text: 'With your permission we will generate\nanoymous statistics to share with\nothers for the purpose of research. \n\n',
                ),
               
               
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Checkbox for Data Use Agreement
          CustomCheckbox(
            value: isImprovingHealthcare,
            onChanged: (value) {
              setState(() {
                isImprovingHealthcare = value ?? false;
              });
            },
            label: 'I accept that you may use\nthe data I share for the above\npurposes',
            activeColor: Colors.purple,
            borderColor: Colors.white,
            // validate: !isPrivacyAccepted ? isPrivacyAccepted1 : false,
          ),
          const SizedBox(height: 20),


          Text.rich(
            TextSpan(
              style: const TextStyle(fontSize: 18, height: 1.5),
              children: [
                const TextSpan(
                  text: '* Optional\n\n',
                ),
               
                const TextSpan(
                  text: 'Can we send you informationabout\nthe ',
                ),
                  const TextSpan(
                  text: 'balance ',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text: 'app and company, or be invited to help us shape the app? \n\n',
                ),
               
               
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Checkbox for Data Use Agreement
          CustomCheckbox(
            value: isEmail,
            onChanged: (value) {
              setState(() {
                isEmail = value ?? false;
              });
            },
            label: 'Yes, by email',
            activeColor: Colors.purple,
            borderColor: Colors.white,
            // validate: !isPrivacyAccepted ? isPrivacyAccepted1 : false,
          ),
          const SizedBox(height: 20),

          // Expandable Section
          const ExpandableSection(
            title: 'How to opt out of data sharing',
            content:
                'You can opt out of data sharing anytime by\nemailing your request to customer support\nat info@balance-app.com.\n\nWe commit to responding to customer\nsupport requests within 7 days.',
          ),
          const SizedBox(height: 20),

          // Sign-Up Button
         SizedBox(
  width: double.infinity,
  child: ElevatedButton(
  onPressed: () {
    if (isTermsAccepted && isPrivacyAccepted) {
      // Navigate to Tab 2 when both terms and privacy are accepted
    //  setState(() {
    //   selectedIndex = ((selectedIndex + 1) % totalTabs).toInt(); // Move to the next tab
    // });
    handleButtonPress(2);
    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CreateAccountForm()),
            );
    // print("Hello, Flutter! $selectedIndex");
    } else {
      // Trigger validation errors if conditions are not met
      setState(() {
        isTermsAccepted1 = !isTermsAccepted; // Show error for Terms if not accepted
        isPrivacyAccepted1 = !isPrivacyAccepted; // Show error for Privacy if not accepted
      });

      // Scroll to the top of the container to show validation messages
      // _scrollController.animateTo(
      //   0.0, // Scroll to the top
      //   duration: const Duration(milliseconds: 300),
      //   curve: Curves.easeInOut,
      // );
    }
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: const Color(0xFF0b5369), // Button background color
    padding: const EdgeInsets.symmetric(vertical: 15), // Padding inside the button
  ),
  child: const Text(
    "Let's get started",
    style: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.white, // Text color
    ),
  ),
),

),
          const SizedBox(height: 50),
        ],
      ),
        ),
         // Tab 2
      Padding(
  padding: const EdgeInsets.symmetric(horizontal: 16.0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // CreateAccountForm(),
    ],
  ),
),

                // Tab 3
                Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        CheckEmailPage(),
        ])),

                // Tab 4
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.check_circle, color: Colors.green, size: 50),
                    SizedBox(height: 10),
                    Text(
                      'All tasks are complete!',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'BalanceAppScreen.dart';
// import 'ExpandableSection.dart';
// import 'CustomCheckbox.dart';

// class BalanceTabScreen extends StatefulWidget {
//   const BalanceTabScreen({Key? key}) : super(key: key);

//   @override
//   State<BalanceTabScreen> createState() => _BalanceTabScreenState();
// }

// class _BalanceTabScreenState extends State<BalanceTabScreen> {
//   int selectedIndex = 0;
//   bool isTermsAccepted = false;
//   bool isPrivacyAccepted = false;
//   bool isTermsAccepted1 = false;
//   bool isPrivacyAccepted1 = false;

//   final ScrollController _scrollController = ScrollController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.white),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => BalanceAppScreen()),
//             );
//           },
//         ),
//         title: const Text(
//           'Sign Up',
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: const Color(0xFF0b5369),
//         centerTitle: true,
//         toolbarHeight: 100.0,
//       ),
//       body: SingleChildScrollView(
//         controller: _scrollController,
//         child: Column(
//           children: [
//             const SizedBox(height: 20),
//             // Horizontal Tabs
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: List.generate(4, (index) {
//                 return GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       selectedIndex = index;
//                     });
//                   },
//                   child: Container(
//                     height: 4,
//                     width: MediaQuery.of(context).size.width * 0.2,
//                     color: selectedIndex == index ? Colors.teal : Colors.grey,
//                     margin: const EdgeInsets.symmetric(horizontal: 8.0),
//                   ),
//                 );
//               }),
//             ),
//             const SizedBox(height: 20),

//             // Tab Content
//             IndexedStack(
//               index: selectedIndex,
//               children: [
//                 // Tab 1
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       // Checkbox for Terms & Conditions
//                       CustomCheckbox(
//                         value: isTermsAccepted,
//                         onChanged: (value) {
//                           setState(() {
//                             isTermsAccepted = value ?? false;
//                             isTermsAccepted1 = false;
//                           });
//                         },
//                         label: 'I have read and agreed to the\nterms and conditions',
//                         activeColor: Colors.purple,
//                         borderColor: Colors.white,
//                         validate: !isTermsAccepted && isTermsAccepted1,
//                       ),
//                       const SizedBox(height: 10),

//                       // Terms and Conditions Link
//                       GestureDetector(
//                         onTap: () {
//                           ScaffoldMessenger.of(context).showSnackBar(
//                             const SnackBar(
//                               content: Text('View Terms and Conditions clicked!'),
//                             ),
//                           );
//                         },
//                         child: const Center(
//                           child: Text(
//                             'View Terms and Conditions',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontSize: 18,
//                               color: Colors.purple,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 30),

//                       // Description Section
//                       const Text.rich(
//                         TextSpan(
//                           children: [
//                             TextSpan(
//                               text: 'For the ',
//                               style: TextStyle(
//                                 fontSize: 24,
//                                 fontWeight: FontWeight.bold,
//                                 color: Color(0xFF0b5369),
//                               ),
//                             ),
//                             TextSpan(
//                               text: 'balance',
//                               style: TextStyle(
//                                 fontSize: 24,
//                                 fontWeight: FontWeight.bold,
//                                 fontStyle: FontStyle.italic,
//                                 color: Color(0xFF0b5369),
//                               ),
//                             ),
//                             TextSpan(
//                               text: ' app to:',
//                               style: TextStyle(
//                                 fontSize: 24,
//                                 fontWeight: FontWeight.bold,
//                                 color: Color(0xFF0b5369),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       const SizedBox(height: 10),

//                       // Data Use Agreement Checkbox
//                       CustomCheckbox(
//                         value: isPrivacyAccepted,
//                         onChanged: (value) {
//                           setState(() {
//                             isPrivacyAccepted = value ?? false;
//                             isPrivacyAccepted1 = false;
//                           });
//                         },
//                         label: 'I accept that you may use\nthe data I share for the above\npurposes',
//                         activeColor: Colors.purple,
//                         borderColor: Colors.white,
//                         validate: !isPrivacyAccepted && isPrivacyAccepted1,
//                       ),
//                       const SizedBox(height: 20),

//                       // Expandable Section
//                       const ExpandableSection(
//                         title: 'How to opt out of data sharing',
//                         content:
//                             'You can opt out of data sharing anytime by\nemailing your request to customer support\nat info@balance-app.com.\n\nWe commit to responding to customer\nsupport requests within 7 days.',
//                       ),
//                       const SizedBox(height: 20),

//                       // Sign-Up Button
//                       SizedBox(
//                         width: double.infinity,
//                         child: ElevatedButton(
//                           onPressed: () {
//                             if (isTermsAccepted && isPrivacyAccepted) {
//                               // Perform the desired action when both terms are accepted
//                               ScaffoldMessenger.of(context).showSnackBar(
//                                 const SnackBar(
//                                   content: Text('Sign Up button clicked!'),
//                                 ),
//                               );
//                             } else {
//                               setState(() {
//                                 isTermsAccepted1 = !isTermsAccepted;
//                                 isPrivacyAccepted1 = !isPrivacyAccepted;
//                               });
//                               _scrollController.animateTo(
//                                 0.0, // Scroll to the top
//                                 duration: const Duration(milliseconds: 300),
//                                 curve: Curves.easeInOut,
//                               );
//                             }
//                           },
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: const Color(0xFF0b5369),
//                             padding: const EdgeInsets.symmetric(vertical: 15),
//                           ),
//                           child: const Text(
//                             "Let's get started",
//                             style: TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 50),
//                     ],
//                   ),
//                 ),

//                 // Tab 2
//                 const Center(
//                   child: Text(
//                     'Tab 2 Content',
//                     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   ),
//                 ),

//                 // Tab 3
//                 const Center(
//                   child: Text(
//                     'Tab 3 Content',
//                     style: TextStyle(fontSize: 24, color: Colors.blue),
//                   ),
//                 ),

//                 // Tab 4
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: const [
//                     Icon(Icons.check_circle, color: Colors.green, size: 50),
//                     SizedBox(height: 10),
//                     Text(
//                       'All tasks are complete!',
//                       style: TextStyle(
//                           fontSize: 18, fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:balance_app/pages/forms/LoginScreen.Dart';
import 'package:balance_app/pages/screens/hrt_steps/QuestionnaireScreen.dart';
import 'package:balance_app/pages/screens/hrt_steps/PeriodScreen.dart';
import 'package:balance_app/pages/forms/PostCreateForm.Dart';
import 'package:balance_app/pages/screens/ExperimentsPopup.Dart';
import 'package:balance_app/pages/screens/FeedBackPage.Dart';
import 'package:balance_app/pages/screens/reviews/ReviewTreatment.Dart';


class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9F1F5), // Light background color
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          },
        ),
        title: Text(
          'Onboarding',
          style: TextStyle(color: Colors.white), // White color for the title text
        ),
        backgroundColor: Color(0xFF0b5369),
        centerTitle: true,
        toolbarHeight: 70.0,
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
Stack(
        children: [
        
            Positioned(
                    top: 10,
                    left: 380,
                    child: Image.asset(
                      'assets/images/onboard.jpg', // Replace with your image path
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
             
          // Content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Row with text and image
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Text
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Almost there!",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF24495A), // Dark teal color
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                 
                  ],
                ),
                const SizedBox(height: 36),
                // Card Content
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 8,
                  color: const Color(0xFFFEEEF4), // Light pink background
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Here's where we ask for some details that'll be helpful for any healthcare professional appointments you may have.",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF24495A),
                            height: 1.5,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          "In your profile there's a graph where you'll be able to see your symptom information all in one place once you start to record your symptoms in your journal.",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF24495A),
                            height: 1.5,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          "There’s also a balance Menopause Symptom Questionnaire©, which is a scale that’s often used by healthcare professionals around the world(sometimes with slight variations) to monitor changes in your symptoms over time. It should be taken once every 3 months and a specific range of your results will be included in any health reports you download.",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF24495A),
                            height: 1.5,
                          ),
                        ),

                         SizedBox(height: 16),
                        Text(
                          "Our questionnaire is 23 questions long and it should only take you around 5 minutes but if you'd like to join balance without completing it now you can find it in your profile later.",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF24495A),
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
              // Buttons
              Center(
                child: Column(
                  children: [
                     OutlinedButton(
                      onPressed: () {
                          Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => QuestionnaireScreen()),
                    );
                      },
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Color(0xFF4C48B7)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 100, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        'Start Questionnaire',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF4C48B7),
                        ),
                      ),
                    ),
                    
                    const SizedBox(height: 16),
                   
                    ElevatedButton(
                      onPressed: () {
                          Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PeriodScreen()),
                    );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF4C48B7), // Purple color
                        padding: const EdgeInsets.symmetric(
                            horizontal: 120, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        'Go to balance',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                      const SizedBox(height: 24),
                     ElevatedButton(
                      onPressed: () {
                          Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PostCreateForm()),
                    );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF4C48B7), // Purple color
                        padding: const EdgeInsets.symmetric(
                            horizontal: 120, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        'Create Post',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 24),
                     ElevatedButton(
                      onPressed: () {
                          Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ExperimentsPopup()),
                    );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF4C48B7), // Purple color
                        padding: const EdgeInsets.symmetric(
                            horizontal: 120, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        'Open Experiments',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                     const SizedBox(height: 24),
                     ElevatedButton(
                      onPressed: () {
                          Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FeedBackPage()),
                    );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF4C48B7), // Purple color
                        padding: const EdgeInsets.symmetric(
                            horizontal: 120, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        'Create Feedback',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                     const SizedBox(height: 24),
                     ElevatedButton(
                      onPressed: () {
                          Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReviewTreatment()),
                    );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF4C48B7), // Purple color
                        padding: const EdgeInsets.symmetric(
                            horizontal: 120, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        'Review Treatment',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              ],
            ),
          ),
           const SizedBox(height: 30),
           
        ],
      ),
            ],
      ),
    ),
      ),
      
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:balance_app/hrt_steps/QuestionnaireScreen.dart';
// import 'package:balance_app/hrt_steps/PeriodScreen.dart';

// class OnboardingPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFE9F1F5), // Light background color
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: Colors.white),
//           onPressed: () {
//             Navigator.pop(context); // Go back to the previous screen
//           },
//         ),
//         title: const Text('Onboarding', style: TextStyle(color: Colors.white)),
//         backgroundColor: const Color(0xFF0b5369),
//         centerTitle: true,
//         toolbarHeight: 70.0,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Stack(
//                 children: [
//                   Positioned(
//                     top: 10,
//                     left: 380,
//                     child: Image.asset(
//                       'assets/images/onboard.jpg',
//                       height: 150,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Text(
//                           "Almost there!",
//                           style: TextStyle(
//                             fontSize: 24,
//                             fontWeight: FontWeight.bold,
//                             color: Color(0xFF24495A),
//                           ),
//                         ),
//                         const SizedBox(height: 36),
//                         Card(
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(16),
//                           ),
//                           elevation: 8,
//                           color: const Color(0xFFFEEEF4),
//                           child: const Padding(
//                             padding: EdgeInsets.all(16.0),
//                             child: Text(
//                               "Here's where we ask for some details that'll be helpful for any healthcare professional appointments you may have.",
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 color: Color(0xFF24495A),
//                                 height: 1.5,
//                               ),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 24),
//                         Center(
//                           child: Column(
//                             children: [
//                               OutlinedButton(
//                                 onPressed: () {
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) =>
//                                             QuestionnaireScreen()),
//                                   );
//                                 },
//                                 style: OutlinedButton.styleFrom(
//                                   side: const BorderSide(
//                                       color: Color(0xFF4C48B7)),
//                                   padding: const EdgeInsets.symmetric(
//                                       horizontal: 100, vertical: 15),
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(30),
//                                   ),
//                                 ),
//                                 child: const Text(
//                                   'Start Questionnaire',
//                                   style: TextStyle(
//                                     fontSize: 18,
//                                     color: Color(0xFF4C48B7),
//                                   ),
//                                 ),
//                               ),
//                               const SizedBox(height: 16),
//                               ElevatedButton(
//                                 onPressed: () {
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => PeriodScreen()),
//                                   );
//                                 },
//                                 style: ElevatedButton.styleFrom(
//                                   backgroundColor: const Color(0xFF4C48B7),
//                                   padding: const EdgeInsets.symmetric(
//                                       horizontal: 120, vertical: 15),
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(30),
//                                   ),
//                                 ),
//                                 child: const Text(
//                                   'Go to balance',
//                                   style: TextStyle(
//                                       fontSize: 18, color: Colors.white),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

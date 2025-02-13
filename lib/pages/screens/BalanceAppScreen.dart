import 'package:balance_app/pages/screens/WhoWeAreScreen.Dart';
import 'package:flutter/material.dart';
import 'package:balance_app/pages/forms/LoginScreen.Dart';

class BalanceAppScreen extends StatefulWidget {
  const BalanceAppScreen({super.key});

  @override
  _BalanceAppScreenState createState() => _BalanceAppScreenState();
}

class _BalanceAppScreenState extends State<BalanceAppScreen> {
  final ValueNotifier<double> _widthNotifier = ValueNotifier<double>(0.0);
  bool _showMessage = false;

  // Toggle the width between 0 and 200 when the button is pressed
  void _toggleWidth() {
    _widthNotifier.value = _widthNotifier.value == 0.0 ? 200.0 : 0.0;
  }

  void _toggleMessage() {
    setState(() {
      _showMessage = !_showMessage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8EBF7), // Light pink background
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    children: [
                      // Description text with expansion
                      GestureDetector(
                        onTap: _toggleMessage,
                        child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 26.0),
                            child: _showMessage
                                ? SizedBox(
                                    height:
                                        455, // Adjust height to control scroll area
                                    child: SingleChildScrollView(
                                        child: Column(
                                      children: [
                                        const SizedBox(height: 30),
                                        Image.asset(
                                          'assets/images/balance.jpg',
                                          height: 100,
                                        ),
                                        const SizedBox(height: 30),
                                        RichText(
                                          text: TextSpan(
                                            style: TextStyle(
                                              fontSize: 25,
                                              color: Color(
                                                  0xFF1E5D6E), // Default text color
                                            ),
                                            children: [
                                              TextSpan(
                                                text: "\u201C",
                                                style: TextStyle(
                                                  fontWeight: FontWeight
                                                      .bold, // Make it bold
                                                  // fontStyle: FontStyle
                                                  //     .italic, // Italicize it
                                                  color: Color(0xFF1E5D6E),
                                                  fontSize:
                                                      28, // Change color (optional)
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "\n\nI'm Dr Louise Newson - GP,\nMenopause Specialist and\nFounder of ",
                                              ),
                                              TextSpan(
                                                text:
                                                    "balance", // Styled "Italy"
                                                style: TextStyle(
                                                  fontWeight: FontWeight
                                                      .bold, // Make it bold
                                                  fontStyle: FontStyle
                                                      .italic, // Italicize it
                                                  color: Color(0xFF1E5D6E),
                                                  // Change color (optional)
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    ". Welcome!\n\nMy initial consultation with\nmy patients is usually about\nunderstanding their overall\nhealth, medical history, "
                                                    "and\nanything that may impact the\nmenopause and how it's treated.\n\n"
                                                    "So once we have a little more\ninformation about you, we'll be\nable to help you understand\nmore about your body - "
                                                    "we'll\nalways keep your information\nsafe so that you feel comfortable\nsharing it with us.\n\n"
                                                    "Remember, this app should\nnever replace an in-person\nconsultation with your doctor.",
                                              ),
                                            ],
                                          ),
                                        ),
                                        // ),

                                        const SizedBox(height: 20),

                                        // Main illustration
                                        Image.asset(
                                          'assets/images/firstpage.jpg',
                                          height: 250,
                                          width: 400,
                                        ),
                                        const SizedBox(height: 20),
                                      ],
                                    )),
                                  )
                                : Column(children: [
                                    const SizedBox(height: 30),
                                    Image.asset(
                                      'assets/images/balance.jpg',
                                      height: 100,
                                    ),
                                    const SizedBox(height: 30),
                                    const Text(
                                      'Read a message from Louise',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Color(0xFF4C48B7),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 20),

                                    // Main illustration
                                    Image.asset(
                                      'assets/images/firstpage.jpg',
                                      height: 250,
                                      width: 400,
                                    ),
                                    // const SizedBox(height: 40),
                                  ])),
                      ),
                      const SizedBox(height: 37),
                      // Buttons
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => WhoWeAreScreen(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF4C48B7),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'Sign up',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            OutlinedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginScreen(),
                                  ),
                                );
                              },
                              style: OutlinedButton.styleFrom(
                                side:
                                    const BorderSide(color: Color(0xFF4C48B7)),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                              ),
                              child: const Center(
                                child: Text(
                                  'Log in',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xFF4C48B7),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 30),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

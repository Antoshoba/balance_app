// import 'package:flutter/material.dart';

// void main() {
//   runApp(SignUpApp());
// }

// class SignUpApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: SignUpScreen(),
//     );
//   }
// }

// class SignUpScreen extends StatelessWidget {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   final ValueNotifier<bool> _agreeTerms = ValueNotifier(false);
//   final ValueNotifier<bool> _acceptDataUsage = ValueNotifier(false);
//   final ValueNotifier<bool> _acceptResearchData = ValueNotifier(false);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Sign Up"),
//         centerTitle: true,
//       ),
//       body: Form(
//         key: _formKey,
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               _buildCheckbox(
//                 "I have read and agreed to the terms and conditions",
//                 _agreeTerms,
//               ),
//               SizedBox(height: 10),
//               _buildCheckbox(
//                 "I accept that you may use the data I share for the above purposes",
//                 _acceptDataUsage,
//               ),
//               SizedBox(height: 10),
//               _buildCheckbox(
//                 "I accept that you may use the data I share for research purposes",
//                 _acceptResearchData,
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   if (_formKey.currentState?.validate() ?? false) {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => NextScreen(),
//                       ),
//                     );
//                   }
//                 },
//                 child: Text("Let's get started"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildCheckbox(String text, ValueNotifier<bool> valueNotifier) {
//     return ValueListenableBuilder<bool>(
//       valueListenable: valueNotifier,
//       builder: (context, value, child) {
//         return ListTile(
//           title: Text(text),
//           value: value,
//           onChanged: (bool? newValue) {
//             valueNotifier.value = newValue ?? false;
//           },
//           controlAffinity: ListTileControlAffinity.leading,
//           subtitle: value == false
//               ? Text(
//                   "This field is required",
//                   style: TextStyle(color: Colors.red, fontSize: 12),
//                 )
//               : null,
//         );
//       },
//     );
//   }
// }

// class NextScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Next Screen"),
//       ),
//       body: Center(
//         child: Text("Welcome to the next screen!"),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// // Screen 1
// class SignUpScreen1 extends StatefulWidget {
//   const SignUpScreen1({Key? key}) : super(key: key);

//   @override
//   State<SignUpScreen1> createState() => _SignUpScreen1State();
// }

// class _SignUpScreen1State extends State<SignUpScreen1> {
//   bool termsAccepted = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Sign Up'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             CheckboxListTile(
//               title: const Text("I have read and agreed to the terms and conditions"),
//               value: termsAccepted,
//               onChanged: (value) {
//                 setState(() {
//                   termsAccepted = value ?? false;
//                 });
//               },
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: termsAccepted
//                   ? () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => const SignUpScreen2()),
//                       );
//                     }
//                   : null,
//               child: const Text("Next"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Screen 2
// class SignUpScreen2 extends StatefulWidget {
//   const SignUpScreen2({Key? key}) : super(key: key);

//   @override
//   State<SignUpScreen2> createState() => _SignUpScreen2State();
// }

// class _SignUpScreen2State extends State<SignUpScreen2> {
//   bool dataSharingAccepted = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Sign Up'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             CheckboxListTile(
//               title: const Text("I accept that you may use the data I share for the above purposes"),
//               value: dataSharingAccepted,
//               onChanged: (value) {
//                 setState(() {
//                   dataSharingAccepted = value ?? false;
//                 });
//               },
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: dataSharingAccepted
//                   ? () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => const SignUpScreen3()),
//                       );
//                     }
//                   : null,
//               child: const Text("Next"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Screen 3
// class SignUpScreen3 extends StatefulWidget {
//   const SignUpScreen3({Key? key}) : super(key: key);

//   @override
//   State<SignUpScreen3> createState() => _SignUpScreen3State();
// }

// class _SignUpScreen3State extends State<SignUpScreen3> {
//   bool emailUpdatesAccepted = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Sign Up'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             CheckboxListTile(
//               title: const Text("Yes, by email"),
//               value: emailUpdatesAccepted,
//               onChanged: (value) {
//                 setState(() {
//                   emailUpdatesAccepted = value ?? false;
//                 });
//               },
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: emailUpdatesAccepted
//                   ? () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => const SuccessScreen()),
//                       );
//                     }
//                   : null,
//               child: const Text("Let's get started"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Success Screen
// class SuccessScreen extends StatelessWidget {
//   const SuccessScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Welcome'),
//       ),
//       body: const Center(
//         child: Text(
//           "Welcome to the Balance App!",
//           style: TextStyle(fontSize: 20),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Balance App',
//       debugShowCheckedModeBanner: false,
//       home: const SignUpScreen1(),
//     );
//   }
// }

// Screen 1
// class SignUpScreen1 extends StatelessWidget {
//   const SignUpScreen1({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     ValueNotifier<bool> termsAccepted = ValueNotifier(false);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Sign Up'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             ValueListenableBuilder<bool>(
//               valueListenable: termsAccepted,
//               builder: (context, value, _) {
//                 return CheckboxListTile(
//                   title: const Text(
//                       "I have read and agreed to the terms and conditions"),
//                   value: value,
//                   onChanged: (bool? newValue) {
//                     termsAccepted.value = newValue ?? false;
//                   },
//                 );
//               },
//             ),
//             const SizedBox(height: 20),
//             ValueListenableBuilder<bool>(
//               valueListenable: termsAccepted,
//               builder: (context, value, _) {
//                 return ElevatedButton(
//                   onPressed: value
//                       ? () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => const SignUpScreen2()),
//                           );
//                         }
//                       : null,
//                   child: const Text("Next"),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Screen 2
// class SignUpScreen2 extends StatelessWidget {
//   const SignUpScreen2({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     ValueNotifier<bool> dataSharingAccepted = ValueNotifier(false);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Sign Up'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             ValueListenableBuilder<bool>(
//               valueListenable: dataSharingAccepted,
//               builder: (context, value, _) {
//                 return CheckboxListTile(
//                   title: const Text(
//                       "I accept that you may use the data I share for the above purposes"),
//                   value: value,
//                   onChanged: (bool? newValue) {
//                     dataSharingAccepted.value = newValue ?? false;
//                   },
//                 );
//               },
//             ),
//             const SizedBox(height: 20),
//             ValueListenableBuilder<bool>(
//               valueListenable: dataSharingAccepted,
//               builder: (context, value, _) {
//                 return ElevatedButton(
//                   onPressed: value
//                       ? () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => const SignUpScreen3()),
//                           );
//                         }
//                       : null,
//                   child: const Text("Next"),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Screen 3
// class SignUpScreen3 extends StatelessWidget {
//   const SignUpScreen3({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     ValueNotifier<bool> emailUpdatesAccepted = ValueNotifier(false);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Sign Up'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             ValueListenableBuilder<bool>(
//               valueListenable: emailUpdatesAccepted,
//               builder: (context, value, _) {
//                 return CheckboxListTile(
//                   title: const Text("Yes, by email"),
//                   value: value,
//                   onChanged: (bool? newValue) {
//                     emailUpdatesAccepted.value = newValue ?? false;
//                   },
//                 );
//               },
//             ),
//             const SizedBox(height: 20),
//             ValueListenableBuilder<bool>(
//               valueListenable: emailUpdatesAccepted,
//               builder: (context, value, _) {
//                 return ElevatedButton(
//                   onPressed: value
//                       ? () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => const SuccessScreen()),
//                           );
//                         }
//                       : null,
//                   child: const Text("Let's get started"),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Success Screen
// class SuccessScreen extends StatelessWidget {
//   const SuccessScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Welcome'),
//       ),
//       body: const Center(
//         child: Text(
//           "Welcome to the Balance App!",
//           style: TextStyle(fontSize: 20),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Balance App',
//       debugShowCheckedModeBanner: false,
//       home: const SignUpScreen1(),
//     );
//   }
// }

// Screen 1
class SignUpScreen1 extends StatelessWidget {
  const SignUpScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> termsAccepted = ValueNotifier(false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(
              'assets/images/balance.jpg', // Replace with the actual image name
              height: 200,
            ),
            const SizedBox(height: 20),
            ValueListenableBuilder<bool>(
              valueListenable: termsAccepted,
              builder: (context, value, _) {
                return CheckboxListTile(
                  title: const Text(
                      "I have read and agreed to the terms and conditions"),
                  value: value,
                  onChanged: (bool? newValue) {
                    termsAccepted.value = newValue ?? false;
                  },
                );
              },
            ),
            const SizedBox(height: 20),
            ValueListenableBuilder<bool>(
              valueListenable: termsAccepted,
              builder: (context, value, _) {
                return ElevatedButton(
                  onPressed: value
                      ? () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpScreen2()),
                          );
                        }
                      : null,
                  child: const Text("Next"),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Screen 2
class SignUpScreen2 extends StatelessWidget {
  const SignUpScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> dataSharingAccepted = ValueNotifier(false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(
              'assets/images/balance.jpg', // Replace with the actual image name
              height: 200,
            ),
            const SizedBox(height: 20),
            ValueListenableBuilder<bool>(
              valueListenable: dataSharingAccepted,
              builder: (context, value, _) {
                return CheckboxListTile(
                  title: const Text(
                      "I accept that you may use the data I share for the above purposes"),
                  value: value,
                  onChanged: (bool? newValue) {
                    dataSharingAccepted.value = newValue ?? false;
                  },
                );
              },
            ),
            const SizedBox(height: 20),
            ValueListenableBuilder<bool>(
              valueListenable: dataSharingAccepted,
              builder: (context, value, _) {
                return ElevatedButton(
                  onPressed: value
                      ? () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpScreen3()),
                          );
                        }
                      : null,
                  child: const Text("Next"),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Screen 3
class SignUpScreen3 extends StatelessWidget {
  const SignUpScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> emailUpdatesAccepted = ValueNotifier(false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(
              'assets/images/balance.jpg', // Replace with the actual image name
              height: 200,
            ),
            const SizedBox(height: 20),
            ValueListenableBuilder<bool>(
              valueListenable: emailUpdatesAccepted,
              builder: (context, value, _) {
                return CheckboxListTile(
                  title: const Text("Yes, by email"),
                  value: value,
                  onChanged: (bool? newValue) {
                    emailUpdatesAccepted.value = newValue ?? false;
                  },
                );
              },
            ),
            const SizedBox(height: 20),
            ValueListenableBuilder<bool>(
              valueListenable: emailUpdatesAccepted,
              builder: (context, value, _) {
                return ElevatedButton(
                  onPressed: value
                      ? () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SuccessScreen()),
                          );
                        }
                      : null,
                  child: const Text("Let's get started"),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Success Screen
class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body: const Center(
        child: Text(
          "Welcome to the Balance App!",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

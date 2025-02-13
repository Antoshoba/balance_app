import 'package:flutter/material.dart';
import 'package:balance_app/pages/screens/BalanceAppScreen.dart'; // Corrected the file name import
import 'package:balance_app/widgets/BalancePluseCard.dart';
import 'package:balance_app/pages/screens/BalanceTabScreen.dart';

class WhoWeAreScreen extends StatelessWidget {
   final PageController _pageController1 = PageController(initialPage:0);
    final PageController _pageController2 = PageController(initialPage:0);
    final PageController _pageController3 = PageController(initialPage:0);
    final PageController _pageController4 = PageController(initialPage:0);
    final PageController _pageController5 = PageController(initialPage:0);
    final PageController _pageController6 = PageController(initialPage:0);
    final PageController _pageController7 = PageController(initialPage:0);


     final PageController _pageController8 = PageController(initialPage:0);
     final PageController _pageController9 = PageController(initialPage:0);
      final PageController _pageController10 = PageController(initialPage:0);
       final PageController _pageController11 = PageController(initialPage:0);
        final PageController _pageController12 = PageController(initialPage:0);
         final PageController _pageController13 = PageController(initialPage:0);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BalanceAppScreen()),
              );
            },
          ),
          title: Text(
            'Who we are',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xFF0b5369),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50.0), // Height of TabBar
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF1E5D73), // Dark teal
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(25),
                  bottom: Radius.circular(25),
                ),
              ),
              child: TabBar(
                indicator: BoxDecoration(
                  color: Color(0xFFf8e7ef), // Background for selected tab
                  borderRadius: BorderRadius.circular(25), // Rounded corners for tab indicator
                ),
                indicatorPadding: EdgeInsets.symmetric(horizontal: -34.0, vertical: 4.0),
                labelColor: const Color(0xFF1E5D73), // Text color for selected tab
                unselectedLabelColor: Colors.white, // Text color for unselected tabs
                labelStyle: TextStyle(fontSize: 18),
                tabs: [
                  Tab(text: 'About the app'),
                  Tab(text: "What's balance+?"),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            // Tab 1 Content
            SingleChildScrollView( // Wrap this part with SingleChildScrollView
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 18,
                        height: 1.5,
                        color: Color(0xFF99b5c0),
                      ),
                      children: [
                        TextSpan(text: 'Our mission at balance is to make menopause support '),
                        TextSpan(text: 'inclusive', style: TextStyle(color: Color(0xFF1E5D73), fontWeight: FontWeight.bold)),
                        TextSpan(text: ' and '),
                        TextSpan(text: 'accessible', style: TextStyle(color: Color(0xFF1E5D73), fontWeight: FontWeight.bold)),
                        TextSpan(text: ' for all, so the main part of the app is'),
                        TextSpan(text: ' free', style: TextStyle(color: Color(0xFF1E5D73), fontWeight: FontWeight.bold)),
                        TextSpan(text: '!'),
                      ],
                    ),
                  ),
                  SizedBox(height: 22),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 18,
                        height: 1.5,
                        color: Color(0xFF99b5c0),
                      ),
                      children: [
                        TextSpan(text: 'We then introduced '),
                        TextSpan(text: 'balance+', style: TextStyle(color: Color(0xFF1E5D73), fontWeight: FontWeight.bold)),
                        TextSpan(text: ' as an optional '),
                        TextSpan(text: 'premium subscription ', style: TextStyle(color: Color(0xFF1E5D73), fontWeight: FontWeight.bold)),
                        TextSpan(text: ' All this revenue goes '),
                        TextSpan(text: 'towards keeping the main part of the app free.'),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'So, what can you do for free?',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF1E5D73)),
                  ),

                  // SizedBox(height: 10),
                  Center(
              child: SizedBox(
                height: 260, // Define a height for the PageView
                child: PageView(
        controller: _pageController1,
        children: [
          // First Page: "Read More" Content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
      Icon(
        Icons.menu_book_outlined,
        color: const Color(0xFF1E5D73),
        size: 36,
      ),
      SizedBox(width: 26),
      RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 30, color: Colors.black, height: 1.5),
          children: [
            TextSpan(
                text: 'Explore \n',
                style: TextStyle(
                    color: const Color(0xFF1E5D73),
                    fontWeight: FontWeight.bold)),
            TextSpan(
                text: 'hundreds of \n',
                style: TextStyle(
                    color: const Color(0xFF1E5D73),
                    fontWeight: FontWeight.bold)),
            TextSpan(
                text: 'expert ',
                style: TextStyle(
                    color: const Color(0xFF1E5D73),
                    fontWeight: FontWeight.bold)),
            TextSpan(
                text: 'articles',
                style: TextStyle(
                    color: const Color(0xFF04b6ae),
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    ],
                    ),
                  ),
                SizedBox(height: 8),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        // Handle read more action
                         _pageController1.animateToPage(
                      1,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Read more', textAlign: TextAlign.center, style: TextStyle(color: const Color(0xFFB793E6), fontSize: 16)),
                          SizedBox(width: 0),
                          Icon(Icons.arrow_forward, color: const Color(0xFFB793E6), size: 18),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          // Second Page: "Back" Content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center, // Center vertically
    crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
    children: [
      Icon(
        Icons.menu_book_outlined,
        color: const Color(0xFF1E5D73),
        size: 36,
      ),
      SizedBox(height: 16), // Space between icon and text
      RichText(
        textAlign: TextAlign.center, // Center the text
        text: TextSpan(
          style: TextStyle(fontSize: 16, color: Colors.black, height: 1.5),
          children: [
            TextSpan(
              text: 'Dive into our extensive library of\n expert content. Find out info about\n HRT, treament options, and how you\n can manage your symptoms.',
               style: TextStyle(
                color: const Color(0xFF1E5D73),
              ),
            ),
            
          ],
        ),
      ),
    ],
  ),
),

            
                 SizedBox(height: 8),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        _pageController1.animateToPage(
                      0,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.arrow_back, color: const Color(0xFFB793E6), size: 18),

                          Text('Back', textAlign: TextAlign.center, style: TextStyle(color: const Color(0xFFB793E6), fontSize: 16)),
                          SizedBox(width: 0),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
                ),
              ),
      ),

                  // SizedBox(height: 10),
                  Center(
              child: SizedBox(
                height: 260, // Define a height for the PageView
                child: PageView(
        controller: _pageController2,
        children: [
          // First Page: "Read More" Content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.calendar_today_outlined,
                          color: const Color(0xFF1E5D73),
                          size: 36,
                        ),
                        SizedBox(width: 26),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 30, color: Colors.black, height: 1.5),
                            children: [
                              TextSpan(text: 'Keep track of \n', style: TextStyle(color: const Color(0xFF1E5D73), fontWeight: FontWeight.bold)),
                              TextSpan(text: 'your ', style: TextStyle(color: const Color(0xFF1E5D73), fontWeight: FontWeight.bold)),
                              TextSpan(text: 'symptoms', style: TextStyle(color: const Color(0xFF04b6ae), fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                SizedBox(height: 8),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        // Handle read more action
                         _pageController2.animateToPage(
                      1,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Read more', textAlign: TextAlign.center, style: TextStyle(color: const Color(0xFFB793E6), fontSize: 16)),
                          SizedBox(width: 0),
                          Icon(Icons.arrow_forward, color: const Color(0xFFB793E6), size: 18),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          // Second Page: "Back" Content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center, // Center vertically
    crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
    children: [
      Icon(
        Icons.calendar_today_outlined,
        color: const Color(0xFF1E5D73),
        size: 36,
      ),
      SizedBox(height: 16), // Space between icon and text
      RichText(
        textAlign: TextAlign.center, // Center the text
        text: TextSpan(
          style: TextStyle(fontSize: 16, color: Colors.black, height: 1.5),
          children: [
            TextSpan(
              text: 'Menopause can be tricky to\n identify. By tracking symptoms\n daily, you can better manage your\n health and wellbeing by pinpointing\n your needs.',
              style: TextStyle(
                color: const Color(0xFF1E5D73),
              ),
            ),
            
          ],
        ),
      ),
    ],
  ),
),

            
                 SizedBox(height: 8),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        _pageController2.animateToPage(
                      0,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.arrow_back, color: const Color(0xFFB793E6), size: 18),

                          Text('Back', textAlign: TextAlign.center, style: TextStyle(color: const Color(0xFFB793E6), fontSize: 16)),
                          SizedBox(width: 0),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
                ),
              ),
      ),

                  // SizedBox(height: 10),
                  Center(
              child: SizedBox(
                height: 260, // Define a height for the PageView
                child: PageView(
        controller: _pageController3,
        children: [
          // First Page: "Read More" Content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.assignment_outlined,
                          color: const Color(0xFF1E5D73),
                          size: 36,
                        ),
                        SizedBox(width: 26),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 30, color: Colors.black, height: 1.5),
                           children: [
                              TextSpan(text: 'Generate a          \n', style: TextStyle(color: const Color(0xFF1E5D73), fontWeight: FontWeight.bold)),
                              TextSpan(text: 'health report  ', style: TextStyle(color: const Color(0xFF04b6ae), fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                SizedBox(height: 8),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        // Handle read more action
                         _pageController3.animateToPage(
                      1,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Read more', textAlign: TextAlign.center, style: TextStyle(color: const Color(0xFFB793E6), fontSize: 16)),
                          SizedBox(width: 0),
                          Icon(Icons.arrow_forward, color: const Color(0xFFB793E6), size: 18),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          // Second Page: "Back" Content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center, // Center vertically
    crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
    children: [
      Icon(
        Icons.assignment_outlined,
        color: const Color(0xFF1E5D73),
        size: 36,
      ),
      SizedBox(height: 16), // Space between icon and text
      RichText(
        textAlign: TextAlign.center, // Center the text
        text: TextSpan(
          style: TextStyle(fontSize: 16, color: Colors.black, height: 1.5),
          children: [
            TextSpan(
              text: 'Fast track your care by generating\n your own balance health report to\n take to GP appointments.',
               style: TextStyle(
                color: const Color(0xFF1E5D73),
              ),
            ),
            
          ],
        ),
      ),
    ],
  ),
),

            
                 SizedBox(height: 8),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        _pageController3.animateToPage(
                      0,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.arrow_back, color: const Color(0xFFB793E6), size: 18),

                          Text('Back', textAlign: TextAlign.center, style: TextStyle(color: const Color(0xFFB793E6), fontSize: 16)),
                          SizedBox(width: 0),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
                ),
              ),
      ),


                  // SizedBox(height: 10),
                  Center(
              child: SizedBox(
                height: 260, // Define a height for the PageView
                child: PageView(
        controller: _pageController4,
        children: [
          // First Page: "Read More" Content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.groups_outlined,
                          color: const Color(0xFF1E5D73),
                          size: 36,
                        ),
                        SizedBox(width: 26),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 30, color: Colors.black, height: 1.5),
                          children: [
                              TextSpan(text: 'Be part of a        \n', style: TextStyle(color: const Color(0xFF1E5D73), fontWeight: FontWeight.bold)),
                              TextSpan(text: 'Supportive \n', style: TextStyle(color: const Color(0xFF1E5D73), fontWeight: FontWeight.bold)),
                              TextSpan(text: 'community', style: TextStyle(color: const Color(0xFF04b6ae), fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                SizedBox(height: 8),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        // Handle read more action
                         _pageController4.animateToPage(
                      1,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Read more', textAlign: TextAlign.center, style: TextStyle(color: const Color(0xFFB793E6), fontSize: 16)),
                          SizedBox(width: 0),
                          Icon(Icons.arrow_forward, color: const Color(0xFFB793E6), size: 18),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          // Second Page: "Back" Content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center, // Center vertically
    crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
    children: [
      Icon(
        Icons.groups_outlined,
        color: const Color(0xFF1E5D73),
        size: 36,
      ),
      SizedBox(height: 16), // Space between icon and text
      RichText(
        textAlign: TextAlign.center, // Center the text
        text: TextSpan(
          style: TextStyle(fontSize: 16, color: Colors.black, height: 1.5),
          children: [
            TextSpan(
              text: 'Fast track your care by generating\n your own balance health report to\n take to GP appointments.',
               style: TextStyle(
                color: const Color(0xFF1E5D73),
              ),
            ),
            
          ],
        ),
      ),
    ],
  ),
),

            
                 SizedBox(height: 8),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        _pageController4.animateToPage(
                      0,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.arrow_back, color: const Color(0xFFB793E6), size: 18),

                          Text('Back', textAlign: TextAlign.center, style: TextStyle(color: const Color(0xFFB793E6), fontSize: 16)),
                          SizedBox(width: 0),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
                ),
              ),
      ),
//  SizedBox(height: 10),
                  Center(
              child: SizedBox(
                height: 260, // Define a height for the PageView
                child: PageView(
        controller: _pageController5,
        children: [
          // First Page: "Read More" Content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.groups_outlined,
                          color: const Color(0xFF1E5D73),
                          size: 36,
                        ),
                        SizedBox(width: 26),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 30, color: Colors.black, height: 1.5),
                           children: [
                              TextSpan(text: 'Keep an eye on \n', style: TextStyle(color: const Color(0xFF1E5D73), fontWeight: FontWeight.bold)),
                              TextSpan(text: 'your ', style: TextStyle(color: const Color(0xFF1E5D73), fontWeight: FontWeight.bold)),
                              TextSpan(text: 'mental \n', style: TextStyle(color: const Color(0xFF04b6ae), fontWeight: FontWeight.bold)),
                              TextSpan(text: 'health', style: TextStyle(color: const Color(0xFF04b6ae), fontWeight: FontWeight.bold)),
                            ],

                          ),
                        ),
                      ],
                    ),
                  ),
                SizedBox(height: 8),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        // Handle read more action
                         _pageController5.animateToPage(
                      1,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Read more', textAlign: TextAlign.center, style: TextStyle(color: const Color(0xFFB793E6), fontSize: 16)),
                          SizedBox(width: 0),
                          Icon(Icons.arrow_forward, color: const Color(0xFFB793E6), size: 18),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          // Second Page: "Back" Content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center, // Center vertically
    crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
    children: [
      Icon(
        Icons.groups_outlined,
        color: const Color(0xFF1E5D73),
        size: 36,
      ),
      SizedBox(height: 16), // Space between icon and text
      RichText(
        textAlign: TextAlign.center, // Center the text
        text: TextSpan(
          style: TextStyle(fontSize: 16, color: Colors.black, height: 1.5),
          children: [
            TextSpan(
              text: 'Fast track your care by generating\n your own balance health report to\n take to GP appointments.',
               style: TextStyle(
                color: const Color(0xFF1E5D73),
              ),
            ),
            
          ],
        ),
      ),
    ],
  ),
),

            
                 SizedBox(height: 8),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        _pageController5.animateToPage(
                      0,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.arrow_back, color: const Color(0xFFB793E6), size: 18),

                          Text('Back', textAlign: TextAlign.center, style: TextStyle(color: const Color(0xFFB793E6), fontSize: 16)),
                          SizedBox(width: 0),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
                ),
              ),
      ),
//  SizedBox(height: 10),
                  Center(
              child: SizedBox(
                height: 260, // Define a height for the PageView
                child: PageView(
        controller: _pageController6,
        children: [
          // First Page: "Read More" Content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.groups_outlined,
                          color: const Color(0xFF1E5D73),
                          size: 36,
                        ),
                        SizedBox(width: 26),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 30, color: Colors.black, height: 1.5),
                           children: [
                              TextSpan(text: 'Take part in      \n', style: TextStyle(color: const Color(0xFF1E5D73), fontWeight: FontWeight.bold)),
                              TextSpan(text: 'community \n', style: TextStyle(color: const Color(0xFF1E5D73), fontWeight: FontWeight.bold)),
                              TextSpan(text: 'experiments', style: TextStyle(color: const Color(0xFF04b6ae), fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                SizedBox(height: 8),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        // Handle read more action
                         _pageController6.animateToPage(
                      1,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Read more', textAlign: TextAlign.center, style: TextStyle(color: const Color(0xFFB793E6), fontSize: 16)),
                          SizedBox(width: 0),
                          Icon(Icons.arrow_forward, color: const Color(0xFFB793E6), size: 18),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          // Second Page: "Back" Content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center, // Center vertically
    crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
    children: [
      Icon(
        Icons.groups_outlined,
        color: const Color(0xFF1E5D73),
        size: 36,
      ),
      SizedBox(height: 16), // Space between icon and text
      RichText(
        textAlign: TextAlign.center, // Center the text
        text: TextSpan(
          style: TextStyle(fontSize: 16, color: Colors.black, height: 1.5),
          children: [
            TextSpan(
              text: 'Fast track your care by generating\n your own balance health report to\n take to GP appointments.',
               style: TextStyle(
                color: const Color(0xFF1E5D73),
              ),
            ),
            
          ],
        ),
      ),
    ],
  ),
),

            
                 SizedBox(height: 8),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        _pageController6.animateToPage(
                      0,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.arrow_back, color: const Color(0xFFB793E6), size: 18),

                          Text('Back', textAlign: TextAlign.center, style: TextStyle(color: const Color(0xFFB793E6), fontSize: 16)),
                          SizedBox(width: 0),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
                ),
              ),
      ),
//  SizedBox(height: 10),
                  Center(
              child: SizedBox(
                height: 260, // Define a height for the PageView
                child: PageView(
        controller: _pageController7,
        children: [
          // First Page: "Read More" Content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.groups_outlined,
                          color: const Color(0xFF1E5D73),
                          size: 36,
                        ),
                        SizedBox(width: 26),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 30, color: Colors.black, height: 1.5),
                         children: [
                              TextSpan(text: 'Monitor your     \n', style: TextStyle(color: const Color(0xFF1E5D73), fontWeight: FontWeight.bold)),
                              TextSpan(text: 'community', style: TextStyle(color: const Color(0xFF04b6ae), fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                SizedBox(height: 8),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        // Handle read more action
                         _pageController7.animateToPage(
                      1,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Read more', textAlign: TextAlign.center, style: TextStyle(color: const Color(0xFFB793E6), fontSize: 16)),
                          SizedBox(width: 0),
                          Icon(Icons.arrow_forward, color: const Color(0xFFB793E6), size: 18),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          // Second Page: "Back" Content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center, // Center vertically
    crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
    children: [
      Icon(
        Icons.groups_outlined,
        color: const Color(0xFF1E5D73),
        size: 36,
      ),
      SizedBox(height: 16), // Space between icon and text
      RichText(
        textAlign: TextAlign.center, // Center the text
        text: TextSpan(
          style: TextStyle(fontSize: 16, color: Colors.black, height: 1.5),
          children: [
            TextSpan(
              text: 'Fast track your care by generating\n your own balance health report to\n take to GP appointments.',
               style: TextStyle(
                color: const Color(0xFF1E5D73),
              ),
            ),
            
          ],
        ),
      ),
    ],
  ),
),

            
                 SizedBox(height: 8),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        _pageController7.animateToPage(
                      0,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.arrow_back, color: const Color(0xFFB793E6), size: 18),

                          Text('Back', textAlign: TextAlign.center, style: TextStyle(color: const Color(0xFFB793E6), fontSize: 16)),
                          SizedBox(width: 0),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
                ),
              ),
      ),


                   SizedBox(height: 20),
                  Container(
                    height: 1200,
                    child: Stack(
                      children: [
                        // Positioned.fill(
                        //   child: ClipRRect(
                        //     borderRadius: BorderRadius.circular(12),
                        //     child: Image.asset(
                        //       'assets/images/profile.png',
                        //       fit: BoxFit.cover,
                        //     ),
                        //   ),
                        // ),
                        Positioned.fill(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              gradient: LinearGradient(
                                colors: [Color(0xFF8E87D5), Colors.purple.withOpacity(0.4)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                          ),
                        ),
                         Positioned(
                          top: 16,
                          left: 16,
                          right: 16,
                          child:
                        Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 35, color: Colors.black, height: 1.5),
                            children: [
                              TextSpan(text: 'Introducing  \n balance+     \n', style: TextStyle(color:  Colors.yellow, fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        //  SizedBox(height: 10),
                        //   RichText(
                        //   text: TextSpan(
                        //     style: TextStyle(fontSize: 20, color: Colors.white, height: 1.5),
                        //     children: [
                        //       TextSpan(text: 'As well as the free part of the  \napp, we introduced a premium\n option that gives a more holistic and personalised experience. \n', style: TextStyle(color: const Color(0xFF1E5D73), fontWeight: FontWeight.bold)),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                         ),
    Positioned(
  top: 156,
  left: 16,
  right: 16,
  child: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: TextStyle(fontSize: 16, color: Colors.white, height: 1.5),
            children: [
              TextSpan(
                text: 'As well as the free part of the app,\nwe introduced a premium option\nthat gives a more holistic and\npersonalised experience.\n\nNot only does Balance+ give you\naccess to unparalleled premium\ncontent, but by subscribing, you\nare also helping to keep the main\npart of the app free for those \nwho aren’t able to pay.\n\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(height: 20.0),
        ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(), // Prevent scrolling if inside another scrollable widget
          children: [
                Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.check_circle, color: Colors.yellow),
                SizedBox(width: 8.0),
             
                Expanded(
      child: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 16.0, color: Colors.white), // Default text style
          children: [
            TextSpan(
              text: 'Live sessions, ',
              style: TextStyle(fontWeight: FontWeight.bold,  color: Colors.yellow), // Apply bold to this part
            ),
            TextSpan(
              text: 'with Dr Louise \nNewson.', // Regular text
            ),
          ],
        ),
      ),
    ),
              ],
            ),
            SizedBox(height: 20.0),
                Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.check_circle, color: Colors.yellow),
                SizedBox(width: 8.0),
             
                Expanded(
      child: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 16.0, color: Colors.white), // Default text style
          children: [
             TextSpan(
              text: 'Access to ', // Regular text
            ),
            TextSpan(
              text: 'video recipes,\n weight management, yoga,\n pilates, classes ',
              style: TextStyle(fontWeight: FontWeight.bold,  color: Colors.yellow), // Apply bold to this part
            ),
             TextSpan(
              text: 'and more!', // Regular text
            ),
           
          ],
        ),
      ),
    ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.check_circle, color: Colors.yellow),
                SizedBox(width: 8.0),
             
                Expanded(
      child: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 16.0, color: Colors.white), // Default text style
          children: [
              TextSpan(
              text: 'Explore', // Regular text
            ),
            TextSpan(
              text: ' expert channels, ',
              style: TextStyle(fontWeight: FontWeight.bold,  color: Colors.yellow), // Apply bold to this part
            ),
            TextSpan(
              text: 'to\n get a holistic personalised\n experience.', // Regular text
            ),
          ],
        ),
      ),
    ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.check_circle, color: Colors.yellow),
                SizedBox(width: 8.0),
                             Expanded(
      child: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 16.0, color: Colors.white), // Default text style
          children: [
              TextSpan(
              text: 'Watch', // Regular text
            ),
            TextSpan(
              text: ' healthcare consultation scenarios, ',
              style: TextStyle(fontWeight: FontWeight.bold,  color: Colors.yellow), // Apply bold to this part
            ),
            TextSpan(
               text: 'to\n help prepare you for doctor\'s \nvisits.',
            ),
          ],
        ),
      ),
    ),
                // Expanded(
                //   child: Text(
                //     "Watch healthcare consultation scenarios to help prepare you for doctor's visits.",
                //     style: TextStyle(fontSize: 16.0, color: Colors.white),
                //   ),
                // ),
              ],
            ),
            SizedBox(height: 20),
            Center(
        child: Image.asset(
          'assets/images/findBalance2.png', // Replace with your saved image path
          height: 250,
          width: 350,
          // fit: BoxFit.cover, // Optional: adjust how the image fits
        ),
      ),
    //         Container(
    //           decoration: BoxDecoration(
    //             color: const Color(0xFF1E5D73), // Dark teal
    //             borderRadius: BorderRadius.vertical(
    //               top: Radius.circular(25),
    //               bottom: Radius.circular(25),
    //             ),
    //           ),
    //           child: TabBar(
    //             indicator: BoxDecoration(
    //               color: Color(0xFFf8e7ef), // Background for selected tab
    //               borderRadius: BorderRadius.circular(25), // Rounded corners for tab indicator
    //             ),
    //             indicatorPadding: EdgeInsets.symmetric(horizontal: -33.5, vertical: 4.0),
    //             labelColor: const Color(0xFF1E5D73), // Text color for selected tab
    //             unselectedLabelColor: Colors.white, // Text color for unselected tabs
    //             labelStyle: TextStyle(fontSize: 18),
    //             tabs: [
    //               Tab(text: 'For you'),
    //               Tab(text: "Learn"),
    //               Tab(text: "balance+"),
    //             ],
    //           ),
    //         ),
    //           SizedBox(height: 8.0),
    // Row(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     Text(
    //       "Find balance+ ",
    //       style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white,),
    //     ),
    //     // SizedBox(width: 1.0),
    //       Image.asset(
    //           'assets/images/image.png', // Replace with your saved image path
    //           height: 50,
    //           width: 50,
    //         ),
          
        
    //   ],
    // ),
                // SizedBox(height: 2.0),
    // Row(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
        
        
    //         Text(
    //       "on the top menu",
    //       style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white,),
    //     ),
        
    //   ],
    // ),
       const SizedBox(height: 20),
                  OutlinedButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => LoginScreen()),
                      // );
                      // Add log-in action
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Color(0xFF4C48B7)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                    ),
                    child: const Center(
                      child: Text(
                        'Find out more',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF4C48B7),
                        ),
                      ),
                    ),
                  ),
          ],
        ),
      ],
    ),
  ),
),

                        
                          //   Positioned(
                          // top: 10,
                          // left: 16,
                          // right: 16,
                          // child: ListView(
    //                             children: [
    //                               Row(
    //   // crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
    //     Icon(Icons.check_circle, color: Colors.yellow),
    //     // SizedBox(width: 8.0),
    //     Expanded(
    //       child: Text(
    //        'Explore expert channels, to get a holistic personalised experience.',
    //         style: TextStyle(fontSize: 16.0),
    //       ),
    //     ),
    //   ],
    // ),
                
    //                             ]
                      
    //                        ),
                        // ),
                      ],
                    ),
                  ),
                 
                  SizedBox(height: 24),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle button press
                         Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BalanceTabScreen()),
              );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF3739c0),
                        minimumSize: Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                      ),
                      child: Text(
                        'Create my free account!',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Tab 2 Content
            SingleChildScrollView( // Wrap this part with SingleChildScrollView
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'balance+ is an optional premium subscription that unlocks more content to give you a more holistic and personalised experience. The revenue we earn from subscriptions is used to keep the lights on for the free app for those who aren’t able to pay.',
                    style: TextStyle(fontSize: 18, height: 1.5, color: Color(0xFF99b5c0)),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'So, what does balance+ include?',
                    style: TextStyle(fontSize: 20, height: 1.5, fontWeight: FontWeight.bold, color: Color(0xFF1E5D73)),
                  ),
                  SizedBox(height: 40),

BalancePluseCard(
   imagePath: 'assets/images/profile.png',
  richText: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 28.0, color: Colors.white), // Default text style
          children: [
            TextSpan(
              text: 'Live sessions ',
              style: TextStyle(fontWeight: FontWeight.bold,  color: Colors.yellow), // Apply bold to this part
            ),
            TextSpan(
               text: 'with\nDr. Louise Newson',
            ),
          ],
        ),
      ),
       onPressed: () {
                        _pageController8.animateToPage(
                          1,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },

  pageController:_pageController8,
  textVal: 'Join our founder, Dr.\nLouise Newson in regular\nlive sessions featuring\nhandpicked guests, and\nexperts in the menopause.'
  ),
  SizedBox(height: 16),
  BalancePluseCard(
   imagePath: 'assets/images/profile.png',
    richText: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 26.0, color: Colors.white), // Default text style
          children: [
              TextSpan(
              text: 'Cook along with\n', // Regular text
            ),
            TextSpan(
              text: 'recipe videos',
              style: TextStyle(fontWeight: FontWeight.bold,  color: Colors.yellow), // Apply bold to this part
            ),
            
          ],
        ),
      ),
       onPressed: () {
                        _pageController9.animateToPage(
                          1,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
  pageController:_pageController9,
  textVal: 'Not sure which foods help\nor hinder your symptoms?\nJoin our nutrition experts for\nplenty of cooking inspiration,\nrecipes, and helpful advice.'
  ),
    SizedBox(height: 16),
  BalancePluseCard(
   imagePath: 'assets/images/profile.png',
    richText: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 26.0, color: Colors.white), // Default text style
          children: [
             TextSpan(
              text: 'Pilates',
              style: TextStyle(fontWeight: FontWeight.bold,  color: Colors.yellow), // Apply bold to this part
            ),
              TextSpan(
              text: ',', // Regular text
            ),
            TextSpan(
              text: 'yoga',
              style: TextStyle(fontWeight: FontWeight.bold,  color: Colors.yellow), // Apply bold to this part
            ),
               TextSpan(
              text: 'and\nguided ', // Regular text
            ),
             TextSpan(
              text: 'meditation',
              style: TextStyle(fontWeight: FontWeight.bold,  color: Colors.yellow), // Apply bold to this part
            ),
             TextSpan(
              text: 'sessions', // Regular text
            ),
            
          ],
        ),
      ),
       onPressed: () {
                        _pageController10.animateToPage(
                          1,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
  pageController:_pageController10,
  textVal: 'Prioritise your health and\nwellbeing with access to\nexclusive exercise and\nwellbeing sessions with our\nbalance experts.'),
    SizedBox(height: 16),
  BalancePluseCard(
   imagePath: 'assets/images/profile.png',
    richText: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 26.0, color: Colors.white), // Default text style
          children: [
             TextSpan(
              text: 'Nutrition\n',
              style: TextStyle(fontWeight: FontWeight.bold,  color: Colors.yellow), // Apply bold to this part
            ),
              TextSpan(
              text: 'and ', // Regular text
            ),
            TextSpan(
              text: 'weight',
              style: TextStyle(fontWeight: FontWeight.bold,  color: Colors.yellow), // Apply bold to this part
            ),
             TextSpan(
              text: '\nmanagement', // Regular text
            ),
            
          ],
        ),
      ),
       onPressed: () {
                        _pageController11.animateToPage(
                          1,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
  pageController:_pageController11,
  textVal: 'Take back control of your\nbody! Learn more about\nthe ways that nutrition can\n improve your symptoms\nand weight changes in\nmenopause.'),
    SizedBox(height: 16),
  BalancePluseCard(
   imagePath: 'assets/images/profile.png',
    richText: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 26.0, color: Colors.white), // Default text style
          children: [
            
            TextSpan(
              text: 'Consultation\nexample ',
              style: TextStyle(fontWeight: FontWeight.bold,  color: Colors.yellow), // Apply bold to this part
            ),
              TextSpan(
              text: 'videos', // Regular text
            ),
            
          ],
        ),
      ),
       onPressed: () {
                        _pageController12.animateToPage(
                          1,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
  pageController:_pageController12,
  textVal: 'Watch our recreations of\na wide range of real-life\nconsultations to help you\nbetter prepare yourself for\nyour next GP appointment.' ),
    SizedBox(height: 16),
  BalancePluseCard(
   imagePath: 'assets/images/profile.png',
    richText: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 26.0, color: Colors.white), // Default text style
          children: [
            
            TextSpan(
              text: 'Sexual health ',
              style: TextStyle(fontWeight: FontWeight.bold,  color: Colors.yellow), // Apply bold to this part
            ),
              TextSpan(
              text: 'and\n pelvic floor experts', // Regular text
            ),
            
          ],
        ),
      ),
       onPressed: () {
                        _pageController13.animateToPage(
                          1,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
  pageController:_pageController13,
  textVal: 'Revive your confidence,\nrebuld your relationship\nwith your body. Menopause can be a very frustrating,\nuncomfortable and confusing\ntime when it comes to sexual\nhealth. Our handpicked\nexperts are here to heip!'
   ),
    SizedBox(height: 10),
Center(
        child: Image.asset(
          'assets/images/findBalance1.jpg', // Replace with your saved image path
          height: 250,
          width: 350,
          // fit: BoxFit.cover, // Optional: adjust how the image fits
        ),
      ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                           Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BalanceTabScreen()),
              );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: const Color(0xFF3739c0),
                ),
                child: Text(
                        'Create my free account!',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
              ),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  //  Widget _buildTab(BuildContext context, String title, bool isActive) {
  //   return Expanded(
  //     child: GestureDetector(
  //       onTap: () {
  //         // Handle tab click
  //       },
  //       child: Container(
  //         padding: EdgeInsets.symmetric(vertical: 12.0),
  //         decoration: BoxDecoration(
  //           color: isActive ? Colors.white : Colors.transparent,
  //           borderRadius: BorderRadius.vertical(top: Radius.circular(12.0)),
  //         ),
  //         child: Center(
  //           child: Text(
  //             title,
  //             style: TextStyle(
  //               color: isActive ? Colors.black : Colors.white,
  //               fontWeight: FontWeight.bold,
  //             ),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  //  }

  // Widget _buildListItem(String text) {
  //   return Row(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Icon(Icons.check_circle, color: Colors.yellow),
  //       SizedBox(width: 8.0),
  //       Expanded(
  //         child: Text(
  //           text,
  //           style: TextStyle(fontSize: 16.0),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  // Widget _buildMiniTab(String title, {bool isActive = false}) {
  //   return GestureDetector(
  //     onTap: () {
  //       // Handle mini-tab click
  //     },
  //     child: Container(
  //       padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
  //       decoration: BoxDecoration(
  //         color: isActive ? Color(0xFF5A48FA) : Colors.transparent,
  //         borderRadius: BorderRadius.circular(8.0),
  //       ),
  //       child: Text(
  //         title,
  //         style: TextStyle(
  //           color: isActive ? Colors.white : Colors.black,
  //           fontWeight: FontWeight.bold,
  //         ),
  //       ),
  //     ),
  //   );
  // }
  
}


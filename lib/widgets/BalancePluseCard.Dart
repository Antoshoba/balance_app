import 'package:flutter/material.dart';

class BalancePluseCard extends StatelessWidget {
  final String imagePath;
  final VoidCallback onPressed;
  final PageController pageController;
  final String textVal;
  final RichText richText;

  const BalancePluseCard({
    Key? key,
    required this.imagePath,
    required this.onPressed,
    required this.pageController,
    required this.textVal,
    required this.richText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final PageController pageController = PageController();

    return SizedBox(
      height: 300,
      child: Stack(
        children: [
          // Static Background Image
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Static Gradient Overlay
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                  colors: [
                    Colors.purple.withOpacity(0.6),
                    Colors.black.withOpacity(0.4),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          // Swipeable Content
          PageView(
            controller: pageController,
            physics: NeverScrollableScrollPhysics(), // Disable manual swipe
            children: [
              // First Page: Main Text Content
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    richText,
                      Spacer(),
                    // "Read More" Button
                    TextButton(
                      onPressed: () {
                        pageController.animateToPage(
                          1,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Read more',
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Second Page: Detailed Content
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Icon(
                    //   Icons.menu_book_outlined,
                    //   color: Colors.white,
                    //   size: 36,
                    // ),
                    // SizedBox(height: 16),
                    RichText(
                      // textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          height: 1.5,
                        ),
                        children: [
                          TextSpan(
                            text:textVal
                                ),
                        ],
                      ),
                    ),
                     Spacer(),
                    // SizedBox(height: 16),
                    TextButton(
                      onPressed: () {
                        pageController.animateToPage(
                          0,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size:30
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Back',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'containerCircle.dart';
import 'animated_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Expanding Circle Demo')),
      ),
      body: SafeArea(
        child: SizedBox(
          height: screenHeight,
          width: screenWidth,
          child: Center(
            child: Stack(
              children: [ ExpandingCircle(
                initialRadius: 50.0,   // Initial radius
                finalRadius: 150.0,
                colors: Colors.black,// Final radius after expansion
                delayDuration: Duration(seconds: 4), // Delay before expansion
              ),
                ExpandingCircle(
                  initialRadius: 40.0,   // Initial radius
                  finalRadius: 130.0,
                  colors: Colors.blueGrey.shade300,// Final radius after expansion
                  delayDuration: Duration(seconds: 3), // Delay before expansion
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AnimatedPage())); // Navigate on tap
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ExpandingCircle(
                        initialRadius: 30.0,
                        finalRadius: 110.0,
                        colors: Colors.blue,
                        delayDuration: Duration(seconds: 2),
                      ),
                      Text(
                        'GO',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                
            ]
            ),
          ),
        ),
      ),
    );
  }
}
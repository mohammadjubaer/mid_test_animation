import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedPage extends StatelessWidget {
  const AnimatedPage({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool maniClick = false.obs;
    final screenHeight = MediaQuery.of(context).size.height;
    final screennWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
            height: screenHeight,
            width: screennWidth,
            child: Center(
              child: SizedBox(
                    width: screenHeight*.7, // Use actual screen width
                    height: screenHeight,
                    // ... other code ...
                    child: SingleChildScrollView(
                      child: Column(
                        // ... other code ...
                        children: [
                          GestureDetector(
                            onTap: () {

                              maniClick.value = !maniClick.value;

                            },
                            child: Icon(Icons.menu),
                          ),
                          SizedBox(height: screenHeight * 0.08),
                          SizedBox(
                              width: screenHeight,
                              height: screenHeight * .8,
                              child: Obx(() => Stack(
                                children: [
                                  AnimatedContainer(
                                    duration: Duration(milliseconds: 880),
                                    curve: Curves.easeOut,
                                    width: maniClick.value ? screenHeight * .68 : screenHeight * 0.34,
                                    height: screenHeight * 0.8,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: maniClick.value ? BorderRadius.circular(70): BorderRadius.circular(100),
                                    ),
                                    child: AnimatedOpacity(
                                      duration: Duration(milliseconds: 880),
                                      opacity: maniClick.value ? 0:1,
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(100),
                                          child: Image.asset("assets/images/m2.jpg",
                                            fit: BoxFit.cover,)
                                      ),
                                    ),
                                  ),
                                  AnimatedPositioned(
                                    duration: Duration(milliseconds: 880),
                                    curve: Curves.easeOut,
                                    right: maniClick.value ? 25: 10.0,
                                    top: maniClick.value ? screenHeight * 0.2 : 0.0,
                                    child: AnimatedContainer(
                                      duration: const Duration(milliseconds: 880),
                                      curve: Curves.easeOut,
                                      width: maniClick.value ? screenHeight * 0.64 : screenHeight * 0.34,
                                      height: screenHeight * 0.55,
                                      decoration: BoxDecoration(
                                        color: Colors.cyanAccent,
                                        borderRadius: maniClick.value ? BorderRadius.circular(60): BorderRadius.circular(100),
                                      ),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children:[ AnimatedOpacity(
                                            duration: Duration(milliseconds: 880),
                                            opacity: maniClick.value ? 0:1,
                                            child: ClipRRect(
                                                borderRadius: BorderRadius.circular(100),
                                                child: Image.asset("assets/images/m3.jpg",
                                                  fit: BoxFit.cover,
                                                  width: screenHeight * 0.34,
                                                  height: screenHeight * 0.55,)
                                            ),
                                          ),
                                            AnimatedOpacity(
                                              duration: Duration(milliseconds: 880),
                                              opacity: maniClick.value ? 1:0,
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  SelectableText.rich(
                                                      TextSpan(
                                                          children: [
                                                            WidgetSpan(child: Icon(Icons.heart_broken, color: Colors.amber, size: 32,),alignment: PlaceholderAlignment.middle),
                                                            TextSpan(
                                                                text: "  LOVE IS BLIND",
                                                                style: TextStyle(
                                                                  color: Colors.white,
                                                                  fontSize: 32,
                                                                )
                                                            )
                                                          ]
                                                      )
                                                  ),
                                                  SelectableText.rich(
                                                      TextSpan(
                                                          children: [
                                                            WidgetSpan(child: Icon(Icons.heart_broken_sharp, color: Colors.amber, size: 32,),alignment: PlaceholderAlignment.middle),
                                                            TextSpan(
                                                                text: " NOW LOVE IS DIE",
                                                                style: TextStyle(
                                                                  color: Colors.teal,
                                                                  fontSize: 32,
                                                                )
                                                            )
                                                          ]
                                                      )
                                                  )
                                                ],
                                              ),
                                            ),
                                          ]

                                      ),
                                    ),
                                  ),
                                  AnimatedPositioned(
                                    duration: Duration(milliseconds: 880),
                                    curve: Curves.easeOut,
                                    bottom: maniClick.value ? screenHeight * .65 : 0.0,
                                    right: maniClick.value ? 25: 10.0,
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 880),
                                      curve: Curves.easeOut,
                                      width: maniClick.value ? screenHeight * .1 : screenHeight * 0.34,
                                      height: maniClick.value ? screenHeight * .1 : screenHeight * 0.23,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(100),
                                      ),
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(100),
                                          child: maniClick.value ? Image.asset("assets/images/m3.jpg",
                                            fit: BoxFit.cover,
                                          ): Image.asset("assets/images/m1.jpg",
                                            fit: BoxFit.cover,)
                                      ),
                                    ),
                                  )
                                ],
                              ),)
                          )
                        ],
                      ),
                    ),
                  )

            ),
          )
      ),
    );
  }
}


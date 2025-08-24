import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:badges/badges.dart' as badges show Badge;
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:readmore/readmore.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Center(
            child: badges.Badge(
              badgeContent: Text('1'),
              child: Icon(Icons.shopping_cart, color: Colors.white),
              badgeAnimation: BadgeAnimation.rotation(
                animationDuration: Duration(seconds: 8),
              ),
            ),
          ),
          SizedBox(width: 20),
        ],
        backgroundColor: Colors.blue,
        title: Center(
          child: Text(
            "Bages_Fontawesome_Icon",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // AnimatedTextKit(
            //   animatedTexts: [
            //     ScaleAnimatedText('Think'),
            //     ScaleAnimatedText('Build'),
            //     ScaleAnimatedText('Ship'),
            //   ],
            // ),
            // SizedBox(
            //   width: 250.0,
            //   child: DefaultTextStyle(
            //     style: const TextStyle(
            //       fontSize: 70.0,
            //       fontFamily: 'Canterbury',
            //     ),
            //     child: AnimatedTextKit(
            //       animatedTexts: [
            //         ScaleAnimatedText('Think'),
            //         ScaleAnimatedText('Build'),
            //         ScaleAnimatedText('Ship'),
            //       ],
            //       onTap: () {
            //         print("Tap Event");
            //       },
            //       totalRepeatCount: 5,
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   width: 250.0,
            //   child: DefaultTextStyle(
            //     style: const TextStyle(
            //       fontSize: 30.0,
            //       fontFamily: 'Bobbers',
            //     ),
            //     child: AnimatedTextKit(
            //       animatedTexts: [
            //         TyperAnimatedText('It is not enough to do your best,'),
            //         TyperAnimatedText('you must know what to do,'),
            //         TyperAnimatedText('and then do your best'),
            //         TyperAnimatedText('- W.Edwards Deming'),
            //       ],
            //       onTap: () {
            //         print("Tap Event");
            //       },
            //     ),
            //   ),
            // ),
            // Center(
            //   child: badges.Badge(
            //     badgeContent: Text('1'),
            //     child: const Icon(Icons.settings),
            //     badgeAnimation: BadgeAnimation.rotation(
            //       animationDuration: Duration(seconds: 8),
            //     ),
            //   ),
            // ),
            // SizedBox(height: 10),
            //
            // Center(
            //   child: badges.Badge(
            //     badgeContent: Text('1'),
            //     child: Icon(Icons.call_sharp),
            //     badgeAnimation: BadgeAnimation.rotation(
            //       animationDuration: Duration(seconds: 8),
            //     ),
            //   ),
            // ),
            // SizedBox(height: 10),
            // ReadMoreText(
            //   "Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.",
            //   trimMode: TrimMode.Line,
            //   trimLines: 1,
            //   colorClickableText: Colors.pink,
            //   trimCollapsedText: 'Show more',
            //   trimExpandedText: 'Show less',
            //   moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            // ),
            // SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  PinCodeTextField(appContext: context, length: 6,
                  obscureText: true,
                  obscuringCharacter: '*',
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10),
                    selectedColor: Colors.grey,
                    inactiveColor: Colors.blue,
                    
                  ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

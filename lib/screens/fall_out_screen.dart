import 'package:flutter/material.dart';
import 'package:wigo/screens/dash_board_screen.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.tertiary
            ],
          ),
        ),

        // child: Column(children: [
        //   SizedBox(),
        //   // Image.asset(
        //   //   "assets/images/logo.png",
        //   //   height: 150,
        //   // ),
        //   SizedBox()
        // ]),
      ),
      Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(),
            Image.asset(
              "assets/images/logo.png",
              height: 150,
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Login As Admin')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const DashboardScreen()));
                    },
                    child: const Text('Login as Seller'))
              ],
            ),
          ],
        ),
      ),
    ]));
  }
}

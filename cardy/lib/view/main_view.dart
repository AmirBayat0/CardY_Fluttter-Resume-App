import 'package:cardy/view/first_view.dart';
import 'package:cardy/view/second_view.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  /// Next Page Function
  void onNextPage(int page) {
    pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
          width: size.width,
          height: size.height,
          child: PageView(
            controller: pageController,
            scrollDirection: Axis.vertical,
            children: [
              /// First View
              FirstView(
                nextPage: () => onNextPage(1),
              ),

              /// Second View
              SecondView(
                nextPage: () => onNextPage(0),
              ),
            ],
          )),
    );
  }
}

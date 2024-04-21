import 'package:flutter/material.dart';
import 'package:shop_app/screens/onBoardringScreens/onBoardringContent.dart';

class OnBoardringSceren extends StatefulWidget {
  const OnBoardringSceren({super.key});

  @override
  State<OnBoardringSceren> createState() => _OnBoardringScerenState();
}

class _OnBoardringScerenState extends State<OnBoardringSceren> {
  late PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: PageView(
        scrollBehavior: ScrollBehavior(),
        controller: _pageController,
        physics: const AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children:   [
          const OnBoardringContent(title: 'Hicats Sam 20Y.o', subTitle: 'Hicats Sam Will be a Asowseme man'),
          const OnBoardringContent(title: 'Hicats Sam 20Y.o', subTitle: 'Hicats Sam Will be a Asowseme man'),
          const OnBoardringContent(title: 'Hicats Sam 20Y.o', subTitle: 'Hicats Sam Will be a Asowseme man'),

          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            IconButton(onPressed: (){
            _pageController.previousPage(duration: const Duration(seconds: 2), curve: Curves.bounceInOut);
            },
             icon: const Icon(Icons.arrow_back_ios)),
              IconButton(onPressed: (){
                _pageController.nextPage(duration: const Duration(seconds: 2), curve: Curves.bounceInOut);

              }, icon: const Icon(Icons.arrow_forward_ios_outlined)),
          ],),
        ],
      ),
    );
  }
}

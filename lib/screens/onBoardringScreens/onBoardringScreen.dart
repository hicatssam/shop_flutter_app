import 'package:flutter/material.dart';
import 'package:shop_app/screen-keys.dart';
import 'package:shop_app/screens/onBoardringScreens/onBoardringContent.dart';

class OnBoardringSceren extends StatefulWidget {
  const OnBoardringSceren({super.key});

  @override
  State<OnBoardringSceren> createState() => _OnBoardringScerenState();
}

class _OnBoardringScerenState extends State<OnBoardringSceren> {
  late PageController _pageController;

  int _currentPage = 0;

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
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Visibility(
                visible: _currentPage >=2 ? true : false,
                child: ElevatedButton(
                  onPressed: () {
                    Future.delayed(const Duration(seconds: 1),(){
                      Navigator.pushReplacementNamed(
                          context, ScreenKeys.loginScreen);
                    });

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: const CircleBorder(
                      side: BorderSide(
                        width: 0,
                        strokeAlign: 0,
                        color: Colors.transparent,
                      ),
                    ),
                    minimumSize: const Size(100, 50),
                  ),
                  child: const Text('Start'),
                ),
              ),
              Visibility(
                visible: _currentPage < 2 ? true : false,
                child: ElevatedButton(
                  onPressed: () {
                    Future.delayed(
                        const Duration(seconds: 1),(){
                      _pageController.nextPage(duration: const Duration(milliseconds: 700), curve: Curves.easeIn);
                    });

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: const CircleBorder(
                      side: BorderSide(
                        width: 0,
                        strokeAlign: 0,
                        color: Colors.transparent,
                      ),
                    ),
                    minimumSize: const Size(100, 50),
                  ),
                  child: const Text('Skip'),
                ),
              ),
            ],
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
                minHeight: 0,
                maxHeight: 500,
                minWidth: 0,
                maxWidth: double.infinity),
            child: PageView(
              onPageChanged: (int index){
                setState(() {
                  _currentPage = index;
                });
              },
              scrollBehavior: const ScrollBehavior(),
              scrollDirection: Axis.horizontal,
              physics: const PageScrollPhysics(),
              controller: _pageController,
              children: const [
                OnBoardringContent(
                    title: 'Hicats Sam 20Y.o',
                    subTitle: 'Hicats Sam Will be a Asowseme man'),
                OnBoardringContent(
                    title: 'Hicats Sam 20Y.o',
                    subTitle: 'Hicats Sam Will be a Asowseme man'),
                OnBoardringContent(
                    title: 'Hicats Sam 20Y.o',
                    subTitle: 'Hicats Sam Will be a Asowseme man'),
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Visibility(
                visible: _currentPage ==0 ? false : true,
                child: IconButton(
                    onPressed: () {
                      _pageController.previousPage(
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeIn);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                    )),
              ),
              Visibility(
                visible: _currentPage ==2 ? true : false,
                maintainState: true,
                maintainAnimation: true,
                maintainSize: true,
                maintainInteractivity: true,
                maintainSemantics: true,
                child: ElevatedButton(onPressed: (){
                  Future.delayed(const Duration(seconds: 1),(){
                    Navigator.pushReplacementNamed(
                        context, ScreenKeys.loginScreen);
                  });

                },style: ElevatedButton.styleFrom(
                    minimumSize: const Size(160, 50),
                    backgroundColor: Colors.orange
                ), child: const Text('Start'),),
              ),

              Visibility(
                visible: _currentPage == 2 ? false : true,
                child: IconButton(
                    onPressed: () {
                      _pageController.nextPage(
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeIn);
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 30,
                    )),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(
              width: 20,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: _currentPage==0 ?Colors.orange : Colors.grey
              ),
            ),
              const SizedBox(width: 5,),
              Container(
                width: 20,
                height: 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:  _currentPage==1 ?Colors.orange : Colors.grey
                ),
              ),
              const SizedBox(width: 5,),
              Container(
                width: 20,
                height: 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: _currentPage==2 ?Colors.orange : Colors.grey
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:clipping_path/controller/on_boarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class OnBoardingPage extends StatelessWidget {
  OnBoardingPage({Key? key}) : super(key: key);
  final _controller = OnBoardingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            PageView.builder(
              controller: _controller.pageController,
              onPageChanged: _controller.selectedPage,
              itemCount: _controller.onBoardingPages.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Image.asset(_controller.onBoardingPages[index].imageAsset),
                    const SizedBox(
                      height: 32,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            _controller.onBoardingPages[index].title,
                            style: const TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          Text(
                            _controller.onBoardingPages[index].description,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height / 5,
              left: MediaQuery.of(context).size.width / 2.5,
              child: Row(
                children: List.generate(
                  _controller.onBoardingPages.length,
                  (index) => Obx(() {
                    return Container(
                      margin: const EdgeInsets.all(4),
                      height: 8,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: _controller.selectedPage.value == index
                            ? Colors.blue.shade400
                            : Colors.blue.shade50,
                        shape: BoxShape.rectangle,
                      ),
                    );
                  }),
                ),
              ),
            ),
            Positioned(
              left: 20,
              bottom: 20,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Skip',
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ),
            ),
            Positioned(
              right: 20,
              bottom: 20,
              child: FloatingActionButton.extended(
                elevation: 0,
                onPressed: _controller.forwardAction,
                label: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'login.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
// add page controller
  late PageController _pageController;

  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  // dispose page controller
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: demodata.length,
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _pageIndex = index;
                  });
                },
                itemBuilder: (context, index) => Onboarding(
                  image: demodata[index].image,
                  title: demodata[index].title,
                  description: demodata[index].description,
                ),
              ),
            ),
            // DotIndicator(),

            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    height: 40,
                    width: 70,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const LogIn()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple[300],
                      ),
                      child: const Text("Skip"),
                    ),
                  ),
                  const Spacer(),
                  ...List.generate(
                    demodata.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: DotIndicator(isActive: index == _pageIndex),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 40,
                    width: 70,
                    child: ElevatedButton(
                      onPressed: () {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple[300],
                      ),
                      child: const Text(
                        "Next",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    this.isActive = false,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isActive ? 12 : 4,
      width: 9,
      decoration: BoxDecoration(
        color: Colors.purple[300],
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

// add onboarding widget
class Onboard {
  const Onboard({
    required this.image,
    required this.title,
    required this.description,
  });

  final String image, title, description;
}

final List<Onboard> demodata = [
  const Onboard(
    image: 'assets/images/one.png',
    title: 'Team up for success',
    description:
        'Get ready to unleash your potential and witness the \n power of teamwork.',
  ),
  const Onboard(
    image: 'assets/images/two.png',
    title: 'User Friendly at its best',
    description:
        'Discover the essence of user-friendliness as our \n interface empowers you to achieve more.',
  ),
  const Onboard(
    image: 'assets/images/three.png',
    title: 'Easy Tesk Creation',
    description:
        'Quickly add tasks, set due dates and add \n discriptions with ease using our app',
  ),
];

class Onboarding extends StatelessWidget {
  const Onboarding({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Center(
          child: Image.asset(
            image,
            height: 200,
          ),
        ),
        const Spacer(),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 20),
        Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xFF7C7C7C),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}

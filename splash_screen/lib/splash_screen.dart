import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:splash_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    // _animationController.addListener(() => setState(() {}));
    TickerFuture tickerFuture = _animationController.repeat();
    tickerFuture.timeout(Duration(seconds: 5), onTimeout: () {
      _animationController.forward(from: 0);
      _animationController.stop(canceled: true);
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => HomeScreen()),
          (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: LottieBuilder.asset(
          'assets/lottie/linmg_dev_animated.json',
          onLoaded: (composition) {
            _animationController..duration = composition.duration;
          },
          frameRate: FrameRate.max,
          height: 100,
          controller: _animationController,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}

import 'package:bookly_app/features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    goToHome();
  }

  void goToHome() {
    // Future.delayed(const Duration(seconds: 5), () {
    //   Get.off(HomeView());
    // });
  }

  @override
  Widget build(BuildContext context) {
    return SplashViewBody();
  }
}

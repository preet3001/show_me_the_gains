import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:show_me_the_gains/assets/assets.dart';
import 'package:show_me_the_gains/router/routes.dart';

class SplashView extends ConsumerStatefulWidget {
  const SplashView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView> {
  @override
  void initState() {
    navigateToLogin(context);
    super.initState();
  }

  Future<void> navigateToLogin(context) async {
    await Future.delayed(const Duration(
      seconds: 2,
    ));
    Navigator.pushNamed(context, loginRoute);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Lottie.asset(Assets.splash)),
    );
  }
}

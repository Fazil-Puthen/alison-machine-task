import 'package:alison/bloc/homebloc/home_bloc.dart';
import 'package:alison/presentation/homescreen/homescreen.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<HomeBloc>().add(FetchHomeDetails());
      return Scaffold(
      //  backgroundColor: Colors.red[700],
      body:FlutterSplashScreen.scale(
        animationDuration: const Duration(seconds: 4),
        duration:const  Duration(seconds: 5),
          backgroundColor: Colors.white,
          childWidget: SizedBox(
            height: 300,
            width: 300,
            child: Image.asset("assets/ShopKart_transparent.png"),
          ),
          onAnimationEnd: () => debugPrint("On Fade In End"),
          nextScreen: HomeScreen(),
        ),
    ) ;;
  }
}
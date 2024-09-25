import 'package:flutter/material.dart';

class mainimage extends StatelessWidget {
  const mainimage({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Stack(children:[Image.asset('assets/alison main.jpg',fit: BoxFit.cover,),
      Positioned(right: 10,
      bottom: 20,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white,width: 2),
            borderRadius: BorderRadius.circular(20)
          ),
        width: 150,
        height: 40,
        child: const  Center(child: Text('shop now',style: TextStyle(color: 
        Colors.white),),),
      ))]),
    );
  }
}
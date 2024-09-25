import 'package:flutter/material.dart';

class OurBrands extends StatelessWidget {
  const OurBrands({
    super.key,
    required this.screenwidth,
  });

  final double screenwidth;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: SizedBox(
          width: screenwidth,
          height: 200,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
             itemBuilder:(context,index){
              return Container(
                decoration: 
                BoxDecoration(borderRadius: BorderRadius.circular(15),
                color: Colors.amber),
                width: 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15), // Same border radius for clipping
                  child: Image.asset(
                    'assets/alison 1.jpg',
                    fit: BoxFit.cover, // Cover to maintain aspect ratio
                  ),
                ),  
              );
             } ,
             separatorBuilder:(context,index){
              return const SizedBox(width: 15,);
             } ,
            itemCount: 10),
          ),
        ),
      );
  }
}
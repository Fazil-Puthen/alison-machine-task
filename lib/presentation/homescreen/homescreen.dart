import 'package:alison/constants/constants.dart';
import 'package:alison/presentation/homescreen/widgets/appbar.dart';
import 'package:alison/presentation/homescreen/widgets/category.dart';
import 'package:alison/presentation/homescreen/widgets/mainimage.dart';
import 'package:alison/presentation/homescreen/widgets/ourbrands.dart';
import 'package:alison/presentation/homescreen/widgets/slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
 const   HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth=MediaQuery.of(context).size.width;
    return  SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(preferredSize: Size.fromHeight(100),
         child:appbar()),
         body: CustomScrollView(
          slivers: [

            //main image
            const mainimage(),
            
            gap,
            const category(name: 'Our Brands',),
            gap,

            //our brands
            OurBrands(screenwidth: screenwidth),

            gap,
            const category(name: 'Our Products',),
            gap,
            
            const SliderImages(),

            
            const category(name: 'Suggested For You',),
            gap,

            OurBrands(screenwidth: screenwidth),
            gap,
            gap,

            SliverToBoxAdapter(
              child: Transform.rotate(angle: 0.09,
              child: Container(
                width: screenwidth,
                height: 50,
                color: Colors.purple,
              ),),
            ),
            gap,

          ],
         ),
         bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.black,
          items:bottomlist
          )
      ),
    );
  }
}





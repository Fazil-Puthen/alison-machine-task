import 'package:alison/constants/constants.dart';
import 'package:alison/presentation/homescreen/widgets/appbar.dart';
import 'package:alison/presentation/homescreen/widgets/category.dart';
import 'package:alison/presentation/homescreen/widgets/mainimage.dart';
import 'package:alison/presentation/homescreen/widgets/ourbrands.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

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
            mainimage(),
            
            gap,
            const category(name: 'Our Brands',),
            gap,

            //our brands
            OurBrands(screenwidth: screenwidth),

            gap,
            const category(name: 'Our Products',),
            gap,
            
            SliverToBoxAdapter(
        child: FanCarouselImageSlider.sliderType1(
               imagesLink: sample,
               isAssets: true,
               autoPlay: false,
               imageRadius: 20,
               slideViewportFraction: 0.5,
               expandImageHeight: 200,
               expandedImageFitMode: BoxFit.fill,
               showIndicator: false,
               sliderHeight: 400,),
      ),

          ],
         ),
      ),
    );
  }
}




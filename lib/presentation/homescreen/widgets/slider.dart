import 'package:alison/constants/constants.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';

class SliderImages extends StatelessWidget {
  const SliderImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
            child: FanCarouselImageSlider.sliderType1(
       imagesLink: sample,
       isAssets: true,
       autoPlay: false,
       imageRadius: 20,
       turns: 100,
       slideViewportFraction: 0.4,
       expandImageHeight: 200,
       expandedImageFitMode: BoxFit.fill,
       showIndicator: false,
       sliderHeight: 250,),
          );
  }
}

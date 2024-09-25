import 'package:flutter/material.dart';

class appbar extends StatelessWidget {
  const appbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     margin: EdgeInsets.symmetric(horizontal: 20),
     height: 80,
     child: Center(
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
          SizedBox
          (child: Image.asset('assets/ShopKart_transparent.png'),
          width: 100,height: 100,),
         const  Row(
           children: [
             Icon(Icons.search,size: 30,),
             SizedBox(width: 10,),
             Icon(Icons.favorite_border,size: 30,),
             SizedBox(width: 10,),
             Icon(Icons.shopping_bag_outlined,size: 30,)
           ],
          )
         ],
       ),
     ),
    );
  }
}
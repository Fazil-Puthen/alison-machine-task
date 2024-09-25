import 'package:flutter/material.dart';

class category extends StatelessWidget {
  final String name;
  const category({
    super.key,
    required this.name
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(margin: EdgeInsets.symmetric(horizontal: 20),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text('view all',style: TextStyle(color: Colors.purple,decoration: TextDecoration.underline),)
          ],
        ),
      ),
    );
  }
}
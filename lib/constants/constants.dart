import 'package:flutter/material.dart';

const gap=SliverPadding(padding: EdgeInsets.only(top: 15));
 final sample=['assets/alison 1.jpg','assets/full-length-cheerful-woman-denim-clothes-posing-white-wall.jpg','assets/alison2.jpg'];
 String banner='https://swan.alisonsnewdemo.online/images/banner/1695716382_1_sH4k9mEPpOeGBInBvUUc9G2X3tXUhPE41ZH3Vp5B.webp';
 final List<BottomNavigationBarItem> bottomlist=[ 
           const  BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined,color: Colors.black,),
                label: 'Swan',
              ),
             const  BottomNavigationBarItem(
                icon: Icon(Icons.local_offer_outlined,color: Colors.black),
                label: 'Brands',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.settings,color: Colors.black),
                label: 'Best Items',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined,color: Colors.black),
                label: 'Categories',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined,color: Colors.black),
                label: 'Account',
              ),
          ];
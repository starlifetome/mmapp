import 'dart:ui';

import 'package:flutter/material.dart';
class Detail_Page extends StatelessWidget {
  String image;
  String title;
  String bimage;
  String price;
  Detail_Page({required this.image,required this.title,required this.bimage,required this.price});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          )
        ),
        //BackdropFilter
        //ClipRRect
        child: Center(child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 10,
              sigmaY: 10,
            ),
            child: Container(
              width: 250, height:  330,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.3)
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        //use to Expanded
                        Expanded(
                          child: Column(
                            children: [
                              Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                              Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's. ",maxLines: 7,style: TextStyle(
                                color: Colors.white,fontSize: 17

                              ),)
                            ],
                          ),
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset(bimage),
                              SizedBox(height: 10,),
                              Text('\$ $price',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15,),
                    TextButton.icon(onPressed: () {},
                        icon: Icon(Icons.shopping_bag_outlined,color: Colors.white,),
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.purple),
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                          )
                        ),
                        label: Text('Add to Card',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),))
                  ],
                ),
              ),
            ),
          ),
        ),),
      ),
    );
  }
}

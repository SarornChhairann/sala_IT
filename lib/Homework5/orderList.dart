import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../infrustruter/style.dart';

class OrderList extends StatelessWidget {
  const OrderList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AppBar(
            backgroundColor: Colors.white.withOpacity(0.9),
            leading: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  shape: BoxShape.circle
                ),
                padding: const EdgeInsets.all(5),
                child: const Icon(FontAwesomeIcons.angleLeft),
              ),
            ),
            title: const Text("My Order",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Burger Queen",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            const Row(
              children: [
                Text("American fast food, Burger "),
                Icon(FontAwesomeIcons.minus,size: 16,),
                SizedBox(width: 10,),
                Text("\uf601",style: TextStyle(fontFamily: "FA",fontSize: 18,color: StyleP.primaryColor),),
                SizedBox(width: 5,),
                Text("Phnom Penh"),
              ],
            ),
            const SizedBox(height: 20,),
            const Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ultimate Veggie Burgers",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                          Text("American fast food, Burger"),
                        ],
                      ),
                      Text("25.50\$",style: TextStyle(color: Colors.green,fontSize: 18,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Classic Smashed Cheeseburger",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                          Text("American fast food, Burger"),
                        ],
                      ),
                      Text("30.00\$",style: TextStyle(color: Colors.green,fontSize: 18,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: MediaQuery.of(context).size.height*0.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Sut Total",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        Text("55.50\$",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold),)
                      ],
                    ),
                    const SizedBox(height: 10,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Taxes & Fees",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        Text("10.00\$",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold),)
                      ],
                    ),
                    const SizedBox(height: 10,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Delivery fees",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        Text("5.00\$",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold),)
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Divider(
                      height: 2,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    const SizedBox(height: 10,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                        Text("70.50\$",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green)),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: StyleP.primaryColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Center(child: Text("Checkout",style: TextStyle(fontSize: 18,color: Colors.white),)),

                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

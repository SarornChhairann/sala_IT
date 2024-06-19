import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Entity/homework5/products.dart';

class CartList extends StatefulWidget {
  const CartList({super.key});

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {

  List<Product> productList=  [
    Product(
      img: "https://tiendasishop.com/media/catalog/product/i/p/iphone_14_pro_deep_purple_pdp_image_position-1a_mxla.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=700&width=700&canvas=700:700",
      title: "Iphone 15 Pro Max",
      rate: "4.9",
      value: "\$1200",
    ),
    Product(
      img: "https://media.ldlc.com/r1600/ld/products/00/05/82/03/LD0005820365_1_0005856870.jpg",
      title: "Mac Book Pro 13\"",
      rate: "4.9",
      value: "\$1500",
    ),
    Product(
      img: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MTJV3?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1694014871985",
      title: "Air Pod Pro\"",
      rate: "4.9",
      value: "\$400",
    ),
    Product(
      img: "https://img.fruugo.com/product/3/45/203344453_max.jpg",
      title: "Smart Watch\"",
      rate: "5.0",
      value: "\$900",
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.94),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 0),
                            color: Colors.grey.withOpacity(0.1),
                            blurRadius: 5,
                            spreadRadius: 3
                          )
                        ],
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Icon(FontAwesomeIcons.angleLeft),
                    ),
                  ),
                  const Text("My Cart",style: TextStyle(fontSize: 20),),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(0, 0),
                              color: Colors.grey.withOpacity(0.1),
                              blurRadius: 5,
                              spreadRadius: 3
                          )
                        ],
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Icon(FontAwesomeIcons.ellipsis),
                    ),
                  ),

                ],
              ),
              const SizedBox(height: 10,),
              Expanded(
                child: ListView.builder(
                  itemCount: productList.length,
                    itemBuilder: (context,index){
                      var item = productList[index];
                      return Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: SizedBox(
                                    width: 150,
                                      height: 150,
                                      child: Image.network(item.img!,fit: BoxFit.contain,width: 100,)),
                                ),
                                const SizedBox(width: 10,),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(item.title!,style: const TextStyle(fontSize: 18),),
                                          const Icon(FontAwesomeIcons.xmark,color: Colors.grey,size: 18,)
                                        ],
                                      ),
                                      const Text("1 TB",style: TextStyle(color: Colors.grey,fontSize: 16),),
                                      const SizedBox(height: 10,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(item.value!,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                          Row(
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.all(10),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  border: const Border(
                                                    top: BorderSide(color: Colors.grey),
                                                    bottom: BorderSide(color: Colors.grey),
                                                    left: BorderSide(color: Colors.grey),
                                                    right: BorderSide(color: Colors.grey),
                                                  )
                                                ),
                                                  child: const Icon(FontAwesomeIcons.minus,size: 15,color: Colors.grey,)
                                              ),
                                              const SizedBox(width: 10,),
                                              const Text("1"),
                                              const SizedBox(width: 10,),
                                              Container(
                                                  padding: const EdgeInsets.all(10),
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(10),
                                                      border: const Border(
                                                        top: BorderSide(color: Colors.green),
                                                        bottom: BorderSide(color: Colors.green),
                                                        left: BorderSide(color: Colors.green),
                                                        right: BorderSide(color: Colors.green),
                                                      )
                                                  ),
                                                  child: const Icon(FontAwesomeIcons.plus,size: 15,color: Colors.green,)
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  border: const Border(
                    top: BorderSide(color: Colors.grey,width: 2),
                    right: BorderSide(color: Colors.grey,width: 2),
                    bottom: BorderSide(color: Colors.grey,width: 2),
                    left: BorderSide(color: Colors.grey,width: 2),
                  )
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("ADJ3AK",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    Row(
                      children: [
                        Text("Promocode applied",style: TextStyle(fontSize: 14,color: Colors.green,fontWeight: FontWeight.bold),),
                        SizedBox(width: 5,),
                        Icon(FontAwesomeIcons.solidCircleCheck,color: Colors.green,size: 16,)
                      ],
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Subtotal:",style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("\$3200.00",style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Delivery Fee:",style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("\$5.00",style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Discount:",style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("40%",style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.grey.withOpacity(0.3))
          )
        ),
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
        child: ElevatedButton(
            onPressed: (){},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Checkout for ",style: TextStyle(color: Colors.white,fontSize: 18),),
                Text("\$1920.00",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ],
            )
        ),
      ),
    );
  }
}

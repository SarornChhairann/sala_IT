import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Entity/products.dart';

class SaleScreen extends StatefulWidget {
  const SaleScreen({super.key});

  @override
  State<SaleScreen> createState() => _SaleScreenState();
}


class _SaleScreenState extends State<SaleScreen> {

  final _lstCategory=[
    "All","Smartphones","Headphones","Laptops"
  ];
  List<Product> productList=  [
    Product(
      img: "https://tiendasishop.com/media/catalog/product/i/p/iphone_14_pro_deep_purple_pdp_image_position-1a_mxla.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=700&width=700&canvas=700:700",
      title: "Iphone 15 Pro Max",
      rate: "4.9",
      value: "\$1200",
    ),
    Product(
      img: "https://www.apple.com/v/macbook-pro-14-and-16/e/images/overview/hero/hero_intro_endframe__e6khcva4hkeq_large.jpg",
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
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Discover",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 0),
                          color: Colors.grey.withOpacity(0.1),
                          blurRadius: 2,
                          spreadRadius: 2,
                        )
                      ]
                    ),
                    child: const Icon(FontAwesomeIcons.cartShopping,color: Colors.green,),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.withOpacity(0.2),
                  suffixIcon: const Icon(FontAwesomeIcons.magnifyingGlass,color: Colors.grey,),
                  hintText: "Search",
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              SizedBox(
                height: 200,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset("assets/image/iphone.jpeg",fit: BoxFit.cover,),
                ),
              ),
              const SizedBox(height: 20,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Category",style: TextStyle(fontSize: 18,),),
                  Text("See all",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                ],
              ),
              const SizedBox(height: 10,),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _lstCategory.length,
                  itemBuilder: (BuildContext context, int index) {
                    var item=_lstCategory[index];
                    return Container(
                      padding: const EdgeInsets.all(15),
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green,
                        shape: BoxShape.rectangle,
                        border: const Border(
                          top: BorderSide(color: Colors.black,),
                          bottom: BorderSide(color: Colors.black),
                          left: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                        ),
                      ),
                      child: Text(item,style: const TextStyle(fontSize: 15,color: Colors.white),),
                    );
                  },
                ),
              ),
              const SizedBox(height:20,),
              Expanded(
                  child: GridView.builder(
                    itemCount: productList.length,
                    reverse: false,
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 5,
                        mainAxisExtent: 250,
                        maxCrossAxisExtent: 200,
                      ),
                      itemBuilder: (context,index){
                        var item=productList[index];
                        return Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    offset: const Offset(0, 0),
                                    blurRadius: 5,
                                    spreadRadius: 2,
                                  )
                                ]
                              ),
                              width: double.infinity,
                              height: 150,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(item.img!,fit: BoxFit.cover,)),
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(child: Text(item.title!,style: const TextStyle(color: Colors.grey,),maxLines: 2,)),
                                SizedBox(
                                  width: 80,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Icon(FontAwesomeIcons.solidStar,color: Colors.orange,size: 18,shadows: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          offset: const Offset(0, 0),
                                          blurRadius: 3,
                                          spreadRadius: 2
                                        )
                                      ],),
                                      Text(" ${item.rate!}",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(item.value!,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                              ],
                            )
                          ],
                        );
                      })
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.house,color: Colors.green,),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.magnifyingGlass,color: Colors.grey,),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.heart,color: Colors.grey,),
              label: "Favourite",
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user,color: Colors.grey,),
              label: "Profile",
            ),
          ]
      ),
    );
  }
}

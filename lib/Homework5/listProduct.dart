import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Entity/homework5/categoryList.dart';
import '../infrustruter/style.dart';

class ListProducts extends StatefulWidget {
  const ListProducts({super.key});

  @override
  State<ListProducts> createState() => _ListProductsState();
}

class _ListProductsState extends State<ListProducts> {

  List<CategoryList> lstCategory = [
    CategoryList(
        title: "Ultimate Veggie Burgers",
        img: "https://www.foodandwine.com/thmb/pwFie7NRkq4SXMDJU6QKnUKlaoI=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Ultimate-Veggie-Burgers-FT-Recipe-0821-5d7532c53a924a7298d2175cf1d4219f.jpg"),
    CategoryList(
        title: "Classic Smashed Cheeseburger",
        img: "https://assets.epicurious.com/photos/5c745a108918ee7ab68daf79/1:1/w_2560%2Cc_limit/Smashburger-recipe-120219.jpg"),
    CategoryList(
        title: "Beef Burger: the best-ever recipe for a classic American burger",
        img: "https://staticcookist.akamaized.net/wp-content/uploads/sites/22/2021/09/beef-burger.jpg"),
    CategoryList(
        title: "Smash burger",
        img: "https://images.services.kitchenstories.io/oR0QlV_BJQq6E3KO86G7GBsNm3c=/3840x0/filters:quality(80)/images.kitchenstories.io/wagtailOriginalImages/R2121_smash_burger_title.jpg"),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Image.asset("assets/image/burgerCard.jpeg",height: MediaQuery.of(context).size.height*0.4,fit: BoxFit.cover,width: double.infinity,),
            Positioned(
              top: 40,
              left: 20,
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Icon(FontAwesomeIcons.angleLeft),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height*0.7,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(50)),
                  color: Colors.white.withOpacity(0.96),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 40,),
                      const Text("Burger Queen",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      const Text("American fast food Burger",style: TextStyle(color: Colors.grey),),
                      const SizedBox(height: 10,),
                      const Row(
                        children: [
                          Icon(FontAwesomeIcons.locationPin,color: StyleP.primaryColor,),
                          SizedBox(width: 5,),
                          Text("Phnom Penh",style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              blurRadius: 2,
                              spreadRadius: 2,
                              offset: const Offset(0, 0),
                            ),

                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: SizedBox(
                          height: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(FontAwesomeIcons.solidStar,color: Colors.yellow,),
                                        SizedBox(width: 10,),
                                        Text("4.7",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Text("Rating",)
                                  ],
                                ),
                              ),
                              VerticalDivider(
                                color: Colors.grey.withOpacity(0.5),
                                thickness: 2,
                                width: 2,
                                indent: 5,
                                endIndent: 5,
                              ),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("\uf643",style: TextStyle(fontSize: 16,fontFamily: "FA",color: StyleP.primaryColor),),
                                        SizedBox(width: 10,),
                                        Text("1K+",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Text("Reviews",)
                                  ],
                                ),
                              ),
                              VerticalDivider(
                                color: Colors.grey.withOpacity(0.5),
                                thickness: 2,
                                width: 2,
                                indent: 5,
                                endIndent: 5,
                              ),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("\ue29e",style: TextStyle(fontSize: 16,fontFamily: "FA",),),
                                        SizedBox(width: 10,),
                                        Text("20 min",style: TextStyle(fontSize: 16,),)
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Text("Delivery",)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      const Text("Welcome to our burger restaurant, where we serve up delicious, juicy burgers that will leave you craving for more."),
                      const SizedBox(height: 10,),
                      SizedBox(
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            hintStyle: const TextStyle(color: Colors.black,fontSize: 14),
                            filled: true,
                            hintText: "Search",
                            prefixIcon: const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text("\uf002",style: TextStyle(fontFamily: "FA",fontSize: 18),textAlign: TextAlign.center,),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide.none,
                            )
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      const Text("Specials",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      Expanded(
                        child: ListView.builder(
                          reverse: false,
                          itemCount: lstCategory.length,
                          itemBuilder: (context,index){
                            var item = lstCategory[index];
                            return Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow:  [
                                  BoxShadow(
                                    offset: const Offset(0,0),
                                    color: Colors.grey.withOpacity(0.1),
                                    blurRadius: 2,
                                    spreadRadius: 2
                                  )
                                ]
                              ),
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(item.title!,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                        const SizedBox(height: 10,),
                                        const Text("Welcome to our burger restaurant, where we serve up delicious, juicy burgers that will leave you craving for more.",
                                          maxLines: 2,overflow: TextOverflow.ellipsis,
                                        ),
                                        const SizedBox(height: 10,),
                                        const Text("25.50\$",style: TextStyle(fontSize: 18,color: Colors.green,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 100,
                                    width: 150,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(item.img!,fit: BoxFit.cover,),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

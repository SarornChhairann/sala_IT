import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lab2/Entity/categoryList.dart';
import 'package:lab2/Homework5/listProduct.dart';
import 'package:lab2/infrustruter/style.dart';

class SaleScreen extends StatefulWidget {
  const SaleScreen({super.key});

  @override
  State<SaleScreen> createState() => _SaleScreenState();
}

class _SaleScreenState extends State<SaleScreen> {
  int _itemSelected = 0;
  List lstTopFood = [
    "assets/image/burgerCard.jpeg",
    "assets/image/pizzaCard.jpeg"
  ];

  List<CategoryList> lstCategory = [
    CategoryList(title: "Burger", img: "assets/image/burger.png"),
    CategoryList(title: "Pizza", img: "assets/image/pizza.png"),
    CategoryList(title: "Donut", img: "assets/image/donut.png"),
    CategoryList(title: "Coffee", img: "assets/image/coffee-cup.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\uf59f",
                        style: TextStyle(
                            fontFamily: "FA",
                            fontSize: 30,
                            color: StyleP.primaryColor),
                      ),
                      Text(
                        '\uf0f3',
                        style: TextStyle(
                            fontFamily: 'FA',
                            fontSize: 25,
                            color: StyleP.primaryColor),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 30,
                  child: Text(
                    "Current Location",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none),
                            filled: true,
                            fillColor: Colors.grey.withOpacity(0.1),
                            hintText: "Search food",
                            hintStyle: const TextStyle(color: Colors.grey),
                            prefixIcon: const Padding(
                              padding: EdgeInsets.only(top: 5, left: 10),
                              child: Text(
                                '\uf002',
                                style: TextStyle(
                                    fontFamily: 'FA',
                                    fontSize: 25,
                                    color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const SizedBox(
                          height: 40,
                          child: Text(
                            '\uf1de',
                            style: TextStyle(
                              fontFamily: 'FA',
                              fontSize: 25,
                            ),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text("See all")
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 140,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: lstCategory.length,
                      itemBuilder: (context, index) {
                        var item = lstCategory[index];
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 80,
                              width: 100,
                              child: Card(
                                margin: const EdgeInsets.only(right: 20),
                                color: StyleP.secondColor,
                                shadowColor: Colors.grey.withOpacity(0.2),
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Image.asset(
                                    item.img!,
                                    width: 50,
                                    fit: BoxFit.contain,
                                    height: 50,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Text(
                                item.title!,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        );
                      }),
                ),
                SizedBox(
                  height: 160,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      buildPromotion("Get", "25 % OFF", "On the food",
                          "assets/image/food1.png", StyleP.primaryColor),
                      buildPromotion("Get", "25 % OFF", "On the food",
                          "assets/image/food2.png", Colors.redAccent)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Top Restaurants",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text("See all"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: lstTopFood.length,
                      itemBuilder: (context, index) {
                        var item = lstTopFood[index];
                        return GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> ListProducts()));
                          },
                          child: Card(
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                        borderRadius: const BorderRadius.vertical(
                                            top: Radius.circular(10)),
                                        child: Image.asset(
                                          item,
                                          fit: BoxFit.cover,
                                          height: 150,
                                          width: 220,
                                          color: Colors.black.withOpacity(0.4),
                                          colorBlendMode: BlendMode.colorBurn,
                                        )),
                                    const Positioned(
                                        top: 10,
                                        right: 10,
                                        child: Icon(
                                          FontAwesomeIcons.heart,
                                          color: Colors.white,
                                        )),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 3),
                                  child: Text("19-29min"),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 3),
                                  child: Text(
                                    "Burger Queen",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 3),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: 50,
                                        child: Row(
                                          children: [
                                            Icon(
                                              FontAwesomeIcons.solidStar,
                                              size: 16,
                                              color: Colors.yellow,
                                            ),
                                            Text(
                                              " 4.9",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      SizedBox(
                                          width: 100, child: Text("100-Reviews")),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _itemSelected,
        onTap: (index) {
          setState(() {
            _itemSelected = index;
          });
        },
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        selectedItemColor: StyleP.primaryColor,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(FontAwesomeIcons.house),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.heart),
            label: "Favourite",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.clipboardList),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            label: "Profile",
          ),
        ],
      ),
    );
  }

  Container buildPromotion(String txt, String txt1, String txt2, String img, Color backColor) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.all(10),
      height: 180,
      width: 300,
      decoration: BoxDecoration(
          color: backColor, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    txt,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    txt1,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    txt2,
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.asset(
                    img,
                    fit: BoxFit.cover,
                  )
              )
          )
        ],
      ),
    );
  }
}

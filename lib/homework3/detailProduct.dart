import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lab2/homework3/cartList.dart';

class DetailProduct extends StatefulWidget {
  const DetailProduct({super.key});

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              blurRadius: 10,
                              spreadRadius: 2,
                            )
                          ]),
                      child: const Icon(FontAwesomeIcons.angleLeft)),
                  SizedBox(
                    width: 100,
                    child: Row(
                      children: [
                        Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                  )
                                ]),
                            child: const Icon(
                              FontAwesomeIcons.solidHeart,
                              color: Colors.red,
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                  )
                                ]),
                            child: const Icon(
                                FontAwesomeIcons.arrowUpFromBracket)),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.35,
                child: Image.asset(
                  "assets/image/iphone cover.png",
                  fit: BoxFit.cover,
                )),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Iphone 15 Pro Max",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        ElevatedButton(
                            style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.red),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "% On sale",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: const Border(
                                  top: BorderSide(color: Colors.grey),
                                  bottom: BorderSide(color: Colors.grey),
                                  left: BorderSide(color: Colors.grey),
                                  right: BorderSide(color: Colors.grey))),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesomeIcons.solidStar,
                                size: 20,
                                color: Colors.orange,
                              ),
                              Text(
                                " 4.8",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: const Border(
                                  top: BorderSide(color: Colors.grey),
                                  bottom: BorderSide(color: Colors.grey),
                                  left: BorderSide(color: Colors.grey),
                                  right: BorderSide(color: Colors.grey))),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesomeIcons.solidThumbsUp,
                                size: 20,
                                color: Colors.green,
                              ),
                              Text(
                                " 94%",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "117 reviews",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Now the Main camera shoots in super-high resolution. So it’s easier than ever "
                      "to take standout photos with amazing detail — from snapshots to stunning landscapes.",
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green),
                          child: const Text(
                            "1 TB",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              border: const Border(
                                  top:
                                      BorderSide(color: Colors.black, width: 2),
                                  bottom:
                                      BorderSide(color: Colors.black, width: 2),
                                  left:
                                      BorderSide(color: Colors.black, width: 2),
                                  right: BorderSide(
                                      color: Colors.black, width: 2))),
                          child: const Text(
                            "825 GB",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              border: const Border(
                                  top:
                                      BorderSide(color: Colors.black, width: 2),
                                  bottom:
                                      BorderSide(color: Colors.black, width: 2),
                                  left:
                                      BorderSide(color: Colors.black, width: 2),
                                  right: BorderSide(
                                      color: Colors.black, width: 2))),
                          child: const Text(
                            "512 GB",
                            style: TextStyle(fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              height: 100,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.grey,width: 0.3)
                ),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "\$1200.00",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: Colors.grey),
                      ),
                      Text("\$950.00",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.green),
                        minimumSize: MaterialStatePropertyAll( Size(double.infinity, 60))
                      ),
                        onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const CartList()));
                        },
                        child: const Text("Add to Cart",style: TextStyle(fontSize: 18,color: Colors.white),),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetStatePropertyAll {
  const WidgetStatePropertyAll();
}

class WidgetStateProperty {
}

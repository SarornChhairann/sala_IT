import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[100],
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 0)
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(FontAwesomeIcons.angleLeft,size: 20,),
                    ),
                    const Text("Course Overview",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 0)
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(FontAwesomeIcons.heart,size: 20,),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset("assets/image/image2.jpeg",),
                ),
                const SizedBox(height: 10,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Figma master class  for beginners",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Icon(FontAwesomeIcons.clock,color: Colors.grey,size: 20,),
                        Text(" 6h 30min . 28 lessons",style: TextStyle(color: Colors.grey,fontSize: 15),),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue.withOpacity(0.1)
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(FontAwesomeIcons.solidStar,color: Colors.yellow,),
                          Text(" 4.9",style: TextStyle(color: Colors.blue),),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                const DefaultTabController(
                    length: 2,
                    child: TabBar(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      unselectedLabelColor: Colors.grey,
                      indicatorPadding: EdgeInsets.symmetric(horizontal: 30),
                      labelStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                      labelColor: Colors.blue,
                      unselectedLabelStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                      indicatorColor: Colors.blue,
                        indicatorSize: TabBarIndicatorSize.tab,
                        dividerHeight: 0,
                        tabs: [
                          Tab(text: "Lessons",),
                          Tab(text: "Description",)
                        ]
                    ),
                ),
                const SizedBox(height: 20,),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        buildPlayLesson(Colors.blue,"Introduction to figma","04.28 min"),
                        const SizedBox(height: 20,),
                        buildPlayLesson(Colors.white,"Understanding interface","06.12 min"),
                        const SizedBox(height: 20,),
                        buildPlayLesson(Colors.white,"Create first design project","43.58 min"),
                        const SizedBox(height: 20,),
                        buildPlayLesson(Colors.white,"Prototyping the design","06.12 min"),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  height: 70,
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              offset: const Offset(0, 0),
                              spreadRadius: 3,
                              blurRadius: 5,
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(child: Text("\$399",style: TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),)),
                      ),
                      const SizedBox(width: 20,),
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                offset: const Offset(0, 0),
                                spreadRadius: 3,
                                blurRadius: 5,
                              ),
                            ],
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(child: Text("Enroll Now",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildPlayLesson(Color playBlue,String title,String subTitle) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                offset: const Offset(0,0),
                spreadRadius: 2,
                blurRadius: 5,
              )
            ],
            shape: BoxShape.circle,
            color:  playBlue == Colors.blue ? Colors.blue: Colors.white,
          ),
          child: Icon(FontAwesomeIcons.play,size: 25,color: playBlue == Colors.blue ? Colors.white: Colors.blue,),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                Text(subTitle,style: const TextStyle(color: Colors.grey,fontSize: 15),),
              ],
            ),
          ),
        ),
        const SizedBox(
            width: 80,
            child: Icon(FontAwesomeIcons.angleRight,size: 30,color: Colors.blue,))
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lab2/Homework6/profile_detail.dart';
import 'package:lab2/infrustruter/style.dart';

import '../Entity/homework6/travel_entity.dart';

class HomeTravelUi extends StatefulWidget {
  const HomeTravelUi({super.key});

  @override
  State<HomeTravelUi> createState() => _HomeTravelUiState();
}

class _HomeTravelUiState extends State<HomeTravelUi> {

  late ScrollController homeScroller1;
  late ScrollController homeScroller2;


  @override
  void initState() {
    homeScroller1=ScrollController();
    homeScroller2=ScrollController();
    super.initState();

    homeScroller1.addListener(() {
      if (homeScroller2.hasClients &&
          homeScroller1.position.hasContentDimensions &&
          homeScroller2.position.hasContentDimensions) {
        homeScroller2.jumpTo(homeScroller1.offset);
      }
    });

    homeScroller2.addListener(() {
      if (homeScroller1.hasClients &&
          homeScroller2.position.hasContentDimensions &&
          homeScroller1.position.hasContentDimensions) {
        homeScroller1.jumpTo(homeScroller2.offset);
      }
    });
  }

  @override
  void dispose() {
    homeScroller1.dispose();
    homeScroller2.dispose();
    super.dispose();
  }

  List<TravelEntity> lstTravel =[
    TravelEntity(
      img: "https://www.studentuniverse.com/blog/wp-content/uploads/2014/04/Australia-Pink-Lake.jpg",
      title: " Hillier Lake",
    ),TravelEntity(
      img: "https://www.studentuniverse.com/blog/wp-content/uploads/2014/04/Chittorgarh-Fort-India.jpg",
      title: "Chittorgarh",
    ),TravelEntity(
      img: "https://www.studentuniverse.com/blog/wp-content/uploads/2014/04/Cinque-Terre-Italy.jpg",
      title: "Cinque Terre",
    ),TravelEntity(
      img: "https://www.studentuniverse.com/blog/wp-content/uploads/2014/04/Fairy-Pools-Isle-of-Skye.jpg",
      title: "Fairy Pools",
    ),TravelEntity(
      img: "https://www.studentuniverse.com/blog/wp-content/uploads/2014/04/Galapagos-Islands.jpg",
      title: "Galápagos ",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const ProfileDetail()));
                      },
                      child: const CircleAvatar(
                        maxRadius: 30,
                        minRadius: 20,
                        backgroundImage: AssetImage("assets/image/user.png"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Jonh Smith",style: Style.txtTitle,),
                          const SizedBox(height: 5,),
                          Text("@jonh_smith",style: Style.subTitle,)
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.withOpacity(0.4)
                  ),
                  child: const Icon(FontAwesomeIcons.bell,color: Colors.white,),
                )
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20,left: 10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                controller: homeScroller1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Stories",style: Style.txtTitle,),
                    const SizedBox(height: 10,),
                    SizedBox(
                      height: 250,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: lstTravel.length,
                          itemBuilder: (context,index){
                            lstTravel.sort((a,b)=>a.title!.compareTo(b.title!));
                            var item=lstTravel[index];
                            return Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: SizedBox(
                                          height: 200,
                                          width: 150,
                                          child: Image.network(item.img!,fit: BoxFit.cover,),
                                        ),
                                      ),
                                      Positioned(
                                        top:10,
                                        left: 10,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: const Text("Live",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(item.title!,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),overflow: TextOverflow.ellipsis,),
                                      const SizedBox(width: 5,),
                                      const Text("\uf336",style: TextStyle(fontFamily: "FA",color: Colors.blue,fontSize: 16),)
                                    ],
                                  )
                                ],
                              ),
                            );
                          }
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                controller: homeScroller1,
                child: Column(
                  children: [
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(right: 30,left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Trending",style: Style.txtTitle,),
                          Text("View all",style: Style.txt16,),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10,),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height*0.3,
                      ),
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: lstTravel.length,
                          itemBuilder: (context,index){
                            lstTravel.sort((a,b)=>b.title!.compareTo(a.title!));
                            var item=lstTravel[index];
                            return Container(
                              margin: const EdgeInsets.only(bottom: 20),
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.vertical(top: Radius.circular(20),bottom: Radius.circular(20)),
                                color: Colors.grey.withOpacity(0.3),
                              ),
                              height: 370,
                              child: Stack(
                                children: [
                                  Column(
                                    children: [
                                      ClipRRect(
                                          borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                                          child: Image.network(item.img!,height: 150,width: double.infinity,fit: BoxFit.cover,)
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(20),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                ClipRRect(
                                                  borderRadius: BorderRadius.circular(10),
                                                  child: Image.network("https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg",
                                                    width: 60,
                                                    height: 60,
                                                    fit: BoxFit.cover,),
                                                ),
                                                const SizedBox(width: 10,),
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Jonh Smith",style: Style.txtTitle,),
                                                    Text("2 hours ago", style: Style.txt16,)
                                                  ],
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 10,),
                                            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.",style: Style.subTitle,),
                                            const SizedBox(height: 10,),
                                            const Text("#adventure #outingsmraval #lifeexpenence #liestyle #lifeexperience #wiifestyle.",style: TextStyle(fontSize: 16,color: Colors.white,wordSpacing: 10),),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                    top: 130,
                                    right: 25,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                offset: const Offset(0, 0),
                                                color: Colors.grey.withOpacity(0.2),
                                                blurRadius: 2,
                                                spreadRadius: 2
                                            )
                                          ],
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: const Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(FontAwesomeIcons.heart),
                                          SizedBox(width: 5,),
                                          Text("Like")
                                        ],
                                      ),
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
            ],
          ),
        ),
      ),
    );
  }
}

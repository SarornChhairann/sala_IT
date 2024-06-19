import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lab2/infrustruter/style.dart';
import '../Entity/homework6/travel_entity.dart';

class ProfileDetail extends StatefulWidget {
  const ProfileDetail({super.key});

  @override
  State<ProfileDetail> createState() => _ProfileDetailState();
}

class _ProfileDetailState extends State<ProfileDetail> {
  List<TravelEntity> lstTravel = [
    TravelEntity(
      img:
          "https://www.studentuniverse.com/blog/wp-content/uploads/2014/04/Australia-Pink-Lake.jpg",
      title: " Hillier Lake",
    ),
    TravelEntity(
      img:
          "https://www.studentuniverse.com/blog/wp-content/uploads/2014/04/Chittorgarh-Fort-India.jpg",
      title: "Chittorgarh",
    ),
    TravelEntity(
      img:
          "https://www.studentuniverse.com/blog/wp-content/uploads/2014/04/Cinque-Terre-Italy.jpg",
      title: "Cinque Terre",
    ),
    TravelEntity(
      img:
          "https://www.studentuniverse.com/blog/wp-content/uploads/2014/04/Fairy-Pools-Isle-of-Skye.jpg",
      title: "Fairy Pools",
    ),
    TravelEntity(
      img:
          "https://www.studentuniverse.com/blog/wp-content/uploads/2014/04/Galapagos-Islands.jpg",
      title: "Galápagos ",
    ),
  ];

  List<String> imgUser = [
    "https://htmlstream.com/preview/unify-v2.6/assets/img-temp/400x450/img5.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxLDEajEW8QIw_X_Zt5S-1rxj0-lhuljenolf6zjfThRco-WTZIlp_QU-BIFFBhjhp9uM&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtYklqWX1v2p2Q5z1JfpDjb7_xjFQjJb3If53FxhclZR6RerZlKBas9RPYSqc-jvgBZLg&usqp=CAU",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  minRadius: 40,
                  maxRadius: 60,
                  backgroundImage: NetworkImage(
                      "https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg"),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Jonh Smith",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "\uf336",
                      style: TextStyle(
                          fontSize: 25, color: Colors.blue, fontFamily: "FA"),
                    ),
                  ],
                ),
                Text(
                  "@jonh_smith",
                  style: Style.txt16,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "765",
                        style: Style.txtTitle,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Posts",
                        style: Style.subTitleGrey,
                      )
                    ],
                  ),
                  VerticalDivider(
                    thickness: 2,
                    width: 2,
                    color: Colors.grey.withOpacity(0.5),
                    indent: 10,
                    endIndent: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "23.6K",
                        style: Style.txtTitle,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Followers",
                        style: Style.subTitleGrey,
                      )
                    ],
                  ),
                  VerticalDivider(
                    thickness: 2,
                    width: 2,
                    color: Colors.grey.withOpacity(0.5),
                    indent: 10,
                    endIndent: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "25.8K",
                        style: Style.txtTitle,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Following",
                        style: Style.subTitleGrey,
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                children: [
                  Image.asset("assets/image/airplane.png"),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Travel freak .",
                    style: Style.txtTitle,
                  ),
                  Image.asset(
                    "assets/image/paint-palette.png",
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "UX/UI Designer",
                    style: Style.txtTitle,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("assets/image/link.png"),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "WWW.Travelfreak.com",
                    style: Style.subTitleGrey,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: GridView.builder(
                    itemCount: lstTravel.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: 1 / 1.4,
                    ),
                    itemBuilder: (context, index) {
                      var item = lstTravel[index];
                      return Stack(
                        children: [
                          SizedBox(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                item.img!,
                                height: 400,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.black.withOpacity(0.1),
                                  Colors.black.withOpacity(0.8),
                                ],
                                stops: const [0.5, 1.0],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5,top: 10),
                            child: Stack(
                              children: imgUser.asMap().entries.map((entry) {
                                imgUser.shuffle(Random());
                                int index = entry.key;
                                String image = entry.value;
                                return Positioned(
                                  left: index * 12.0,
                                  child: Container(
                                    width: 30.0,
                                    height: 30.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.white, width: 2.0),
                                      image: DecorationImage(
                                        image: NetworkImage(image),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                          Positioned(
                            top: 15,
                              left: 65,
                              child: Text("34.7K",style: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 16,fontWeight: FontWeight.bold),)
                          ),
                          Positioned(
                              top: 15,
                              right: 10,
                              child: Icon(FontAwesomeIcons.ellipsis,color: Colors.white.withOpacity(0.8),)
                          ),
                          Positioned(
                              bottom: 50,
                              left: 10,
                              child: Text("Scotland of India",style: Style.subTitle,)
                          ),
                          Positioned(
                              bottom: 20,
                              left: 10,
                              child: Text("#Travel #BeautifulPlace",style: TextStyle(color: Colors.white.withOpacity(0.8)),)
                          ),
                        ],
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

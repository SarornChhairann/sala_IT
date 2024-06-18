import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lab2/HomeWork4/homeScreen.dart';

import '../Entity/movieEntity.dart';
import '../infrustruter/style.dart';

class DownloadPage extends StatefulWidget  {
  const DownloadPage({super.key});

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  int _selectedIndex=0;

  List<MovieEntity> _slideList = [
    MovieEntity(
        index: 4,
        img:
        "https://www.themoviedb.org/t/p/w1280/mztdt3y6GBsJR69zHtszFezTCLT.jpg",
        title: "The Acolyte (2024)",
        subTitle:
        "An investigation into a shocking crime spree pits a respected Jedi Master against a dangerous warrior from his past. As more clues emerge, they travel down a dark path where sinister forces reveal all is not what it seems.",
        time: "2h 05m"),
    MovieEntity(
        index: 2,
        img:
        "https://www.themoviedb.org/t/p/w1280/jbwYaoYWZwxtPP76AZnfYKQjCEB.jpg",
        title: "Deadpool & Wolverine (2024)",
        subTitle:
        "A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine.",
        time: "2h 7m"),
    MovieEntity(
        index: 3,
        img:
        "https://www.themoviedb.org/t/p/w1280/nP6RliHjxsz4irTKsxe8FRhKZYl.jpg",
        title: "Bad Boys: Ride or Die (2024)",
        subTitle:
        "After their late former Captain is framed, Lowrey and Burnett try to clear his name, only to end up on the run themselves.",
        time: "1h 55m"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.backPrimaryColor,
      appBar: AppBar(
        backgroundColor: Style.backPrimaryColor,
        automaticallyImplyLeading: false,
        title: const Text("Download",style: TextStyle(color: Colors.white,fontSize: 25),),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const DefaultTabController(
                length: 2,
                child: TabBar(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: Style.buttonPrimaryColor,
                  dividerHeight: 0,
                  labelColor: Style.buttonPrimaryColor,
                  unselectedLabelColor: Colors.grey,
                  labelStyle: TextStyle(fontSize: 18),
                  tabs: [
                    Tab(
                      text: "Downlaoded",
                    ),
                    Tab(
                      text: "Downlaoding",
                    )
                  ],
                )
            ),
            const SizedBox(height: 20,),
            Expanded(
                child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemCount: _slideList.length,
                    itemBuilder: (context,index){
                      var item = _slideList[index];
                      return Card(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        color: Style.buttonSurfaceColor,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 140,
                                width: 150,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(item.img!,fit: BoxFit.cover,),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(child: Text(item.title!,style: const TextStyle(color: Colors.white,fontSize: 16),)),
                                              const SizedBox(
                                                  width: 20,
                                                  child: Icon(FontAwesomeIcons.ellipsisVertical,size: 16,color: Colors.white,)
                                              ),
                                            ],
                                          ),
                                          const Text("Action, Adventure",style: TextStyle(color: Colors.grey),),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 50,
                                          child: Text("2:05:32 | 1.2GB",style: TextStyle(color: Colors.grey),)),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }
                ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
            if(_selectedIndex==0){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const MovieScreen()));
            }
          },
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Style.buttonSurfaceColor,
                icon: Icon(FontAwesomeIcons.house),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.magnifyingGlass), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.bookmark), label: "Saved"),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.download), label: "Download"),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.user), label: "Me"),
          ]),
    );
  }
}

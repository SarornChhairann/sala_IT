import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lab2/HomeWork4/detail.dart';
import 'package:lab2/HomeWork4/download.dart';

import '../Entity/movieEntity.dart';
import '../infrustruter/style.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({super.key});

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  int tapIndex = 0;
  int _selectedIndex = 0;
  final List _category = ["All", "Action", "Comedy", "Romance"];
  List<MovieEntity> slideList = [
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

  List<MovieEntity> allMovie = [
    MovieEntity(
        index: 1,
        img:
            "https://www.themoviedb.org/t/p/w1280/z1p34vh7dEOnLDmyCrlUVLuoDzd.jpg",
        title: "Godzilla x Kong: The New Empire (2024)",
        subTitle:
            "Following their explosive showdown, Godzilla and Kong must reunite against a colossal undiscovered threat hidden within our world, challenging their very existence – and our own.",
        time: "1h 55m"),
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
    MovieEntity(
        index: 4,
        img:
            "https://www.themoviedb.org/t/p/w1280/mztdt3y6GBsJR69zHtszFezTCLT.jpg",
        title: "The Acolyte (2024)",
        subTitle:
            "An investigation into a shocking crime spree pits a respected Jedi Master against a dangerous warrior from his past. As more clues emerge, they travel down a dark path where sinister forces reveal all is not what it seems.",
        time: "2h 05m"),
    MovieEntity(
        index: 5,
        img:
            "https://www.themoviedb.org/t/p/w1280/tSz1qsmSJon0rqjHBxXZmrotuse.jpg",
        title: "The Fall Guy (2024)",
        subTitle:
            "Fresh off an almost career-ending accident, stuntman Colt Seavers has to track down a missing movie star, solve a conspiracy and try to win back the love of his life while still doing his day job.",
        time: "2h 06m"),
    MovieEntity(
        index: 6,
        img:
            "https://www.themoviedb.org/t/p/w1280/qZPLK5ktRKa3CL4sKRZtj8UlPYc.jpg",
        title: "Under Paris (2024)",
        subTitle:
            "In the Summer of 2024, Paris is hosting the World Triathlon Championships on the Seine for the first time. Sophia, a brilliant scientist, learns from Mika, a young environmental activist, that a large shark is swimming deep in the river. To avoid a bloodbath at the heart of the city, they have no choice but to join forces with Adil, the Seine river police commander.",
        time: "1h 44m"),
    MovieEntity(
        index: 7,
        img:
            "https://www.themoviedb.org/t/p/w1280/iADOJ8Zymht2JPMoy3R7xceZprc.jpg",
        title: "Furiosa: A Mad Max Saga (2024)",
        subTitle:
            "As the world fell, young Furiosa is snatched from the Green Place of Many Mothers and falls into the hands of a great Biker Horde led by the Warlord Dementus. Sweeping through the Wasteland they come across the Citadel presided over by The Immortan Joe. While the two Tyrants war for dominance, Furiosa must survive many trials as she puts together the means to find her way home.",
        time: "2h 29m"),
    MovieEntity(
        index: 8,
        img:
            "https://www.themoviedb.org/t/p/w1280/cw6M4c2MpLSzqzmrrqpSJlEbwCF.jpg",
        title: "Top Chef VIP (2022)",
        subTitle:
            "We don't have an overview translated in English. Help us expand our database by adding one.",
        time: "2h 10m"),
    MovieEntity(
        index: 9,
        img:
            "https://www.themoviedb.org/t/p/w1280/8FHthx4Vu81J4X5BTLhJYK9Gtbs.jpg",
        title: "Doctor Who (2024)",
        subTitle:
            "The Doctor and his companion travel across time and space encountering incredible friends and foes.",
        time: "2h 20m"),
    MovieEntity(
        index: 10,
        img:
            "https://www.themoviedb.org/t/p/w1280/1pdfLvkbY9ohJlCjQH2CZjjYVvJ.jpg",
        title: "Dune: Part Two (2024)",
        subTitle:
            "Follow the mythic journey of Paul Atreides as he unites with Chani and the Fremen while on a path of revenge against the conspirators who destroyed his family. Facing a choice between the love of his life and the fate of the known universe, Paul endeavors to prevent a terrible future only he can foresee.",
        time: "2h 47m"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.backPrimaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: PageView.builder(
                    itemCount: slideList.length,
                    itemBuilder: (context, index) {
                      var item = slideList[index];
                      return Image.network(
                        item.img!,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      );
                    }),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      height: 10,
                      width: 10,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Style.buttonPrimaryColor,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 15,
                      width: 15,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Style.buttonPrimaryColor,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Style.buttonPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Category",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 60,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _category.length,
                itemBuilder: (context, index) {
                  var item = _category[index];
                  if (tapIndex != index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          tapIndex = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 10),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        decoration: BoxDecoration(
                          color:Style.buttonSurfaceColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          item,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  }
                  return Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 5, vertical: 10),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    decoration: BoxDecoration(
                      color: Style.buttonPrimaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      item,
                      style: const TextStyle(color: Colors.white),
                    ),
                  );
                }),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Most Popular",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Sea all",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                        itemCount: allMovie.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          allMovie.sort((a, b) => b.index!.compareTo(a.index!));
                          var item = allMovie[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MovieDetail(img: item.img!,title: item.title!,subTitle: item.subTitle!,)));
                                });
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(item.img!),
                              ),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Latest Movie",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Sea all",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                        itemCount: allMovie.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          allMovie.sort((a, b) => a.index!.compareTo(b.index!));
                          var item = allMovie[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(item.img!),
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
            if(_selectedIndex==3){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const DownloadPage()));
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

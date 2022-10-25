import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:martifu_samples/data/fields.dart';

import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Scaffold(
          //BottomNavigator 4 items

          body: Stack(
            children: [
              SingleChildScrollView(
                child: Stack(
                  children: [
                    ...List.generate(
                        5,
                        (index) => Positioned(
                              top: kToolbarHeight - index * 30,
                              right: 35 - index * 40,
                              child: Container(
                                height: index * 85,
                                width: index * 85,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xff283037)
                                          .withOpacity(0.15),
                                      width: 1),
                                  borderRadius: BorderRadius.circular(9999),
                                ),
                              ),
                            )),
                    Positioned(
                      top: kTextTabBarHeight,
                      left: 30,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.menu,
                            size: 30,
                          ),
                          SizedBox(
                            width: size.width * 0.73,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff283037),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Stack(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(faces[2]),
                                  ),
                                  const Positioned(
                                      right: 0,
                                      top: 0,
                                      child: CircleAvatar(
                                        backgroundColor: Color(0xff1CB45F),
                                        radius: 6,
                                      )),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: kToolbarHeight + 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Text(
                              'Hello, Richmond',
                              style: TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.w900),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              children: const [
                                Icon(
                                  Iconsax.location,
                                  color: Colors.grey,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'Kingsclere, Tadley',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5),
                          Cards(size: size),
                          const SizedBox(height: 0),
                          Center(
                            child: Container(
                              width: size.width * 0.6,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 20,
                                    offset: const Offset(0, 8),
                                  ),
                                ],
                              ),
                              child: Center(
                                child: SizedBox(
                                  width: size.width * 0.6,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: const Color(0xff283037),
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const DetailPage(),
                                          ),
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 20),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Icon(Icons.play_arrow_rounded,
                                                color: Color(0xff1CB45F)),
                                            Text(
                                              'Start round',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      )),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.1,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: kToolbarHeight,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 20,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Iconsax.discover,
                              color: Color(0xff1CB45F),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Iconsax.cup,
                              color: const Color(0xff283037).withOpacity(.5),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Iconsax.chart,
                              color: const Color(0xff283037).withOpacity(.5),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Iconsax.notification,
                              color: const Color(0xff283037).withOpacity(.5),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Cards extends StatelessWidget {
  const Cards({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: size.height * 0.65,
        child: PageView(
          controller: PageController(
            viewportFraction: 0.9,
            initialPage: 0,
          ),
          children: fields
              .map((e) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailPage(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.7),
                              spreadRadius: 5,
                              blurRadius: 20,
                              offset: const Offset(0, 8),
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage(
                                e.image!,
                              ),
                              fit: BoxFit.cover),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                                right: 20,
                                top: 15,
                                child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: Colors.black.withOpacity(0.2),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Icon(
                                        Icons.play_circle_outline_sharp,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ))),
                            Positioned(
                              bottom: 0,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: size.width * 0.7,
                                      child: Text(
                                        e.name!,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 30,
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    SizedBox(
                                      width: size.width * 0.8,
                                      child: Text(
                                        e.description!,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: size.width * 0.25,
                                          height: 60,
                                          child: ListView.builder(
                                            itemCount: 4,
                                            scrollDirection: Axis.horizontal,
                                            itemBuilder: (context, index) {
                                              String f = faces[index];
                                              return Align(
                                                widthFactor: 0.7,
                                                child: Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Color(0xff283037),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                100)),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            2.0),
                                                    child: CircleAvatar(
                                                      radius: 15,
                                                      backgroundImage:
                                                          NetworkImage(f),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Text(
                                            '${e.friends} friends are here',
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ))
              .toList(),
        ));
  }
}

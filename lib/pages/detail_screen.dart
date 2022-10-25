import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:martifu_samples/data/fields.dart';
import 'package:animate_do/animate_do.dart';
import 'package:martifu_samples/widgets/pulse.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_sharp,
            size: 30,
            color: Color(0xff283037),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Hole 5',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              size: 30,
              color: Color(0xff283037),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Stack(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Par",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const HoleChips(),
                      SizedBox(
                        height: size.height * .05,
                      ),
                      YardsCard(size: size),
                      SizedBox(
                        height: size.height * .02,
                      ),
                      StatsCards(size: size),
                      SizedBox(
                        height: size.height * .03,
                      ),
                      TipCard(size: size),
                      SizedBox(
                        height: size.height * .04,
                      ),
                      FadeIn(child: SlideInUp(child: ProfileCard(size: size)))
                    ],
                  ),
                ),
                Positioned(
                  right: -60,
                  child: Image.asset(
                    "assets/images/hole-view.png",
                    height: size.height * .75,
                  ),
                ),
                Positioned(
                  right: -60,
                  top: size.height * .45,
                  child: FadeIn(
                    duration: const Duration(seconds: 2),
                    child: SlideInRight(
                      duration: const Duration(seconds: 2),
                      child: Image.asset(
                        "assets/images/cloud.png",
                        height: size.height * .1,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 160,
                  top: 110,
                  child: FadeIn(
                    duration: const Duration(seconds: 2),
                    child: SlideInLeft(
                      duration: const Duration(seconds: 2),
                      child: Image.asset(
                        "assets/images/cloud2.png",
                        height: size.height * .2,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: size.width * .22,
                  top: size.height * .35,
                  child: FadeIn(
                    duration: const Duration(seconds: 2),
                    child: Stack(
                      children: [
                        Positioned(
                          child: PulsingWidget(
                            duration: const Duration(milliseconds: 1200),
                            tween: Tween<double>(begin: 0.0, end: 1.0),
                            child: Container(
                              width: size.width * .2,
                              height: size.width * .2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                  color: const Color(0xff07ADE1),
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          left: 10,
                          child: PulsingWidget(
                            duration: const Duration(seconds: 1),
                            tween: Tween<double>(begin: 0.0, end: 1.0),
                            child: Container(
                              width: size.width * .16,
                              height: size.width * .16,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                  color: const Color(0xff07ADE1),
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 18,
                          left: 18,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: const Color(0xff07ADE1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(faces[2]),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * .13,
      decoration: BoxDecoration(
        color: const Color(0xff283037),
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff283037).withOpacity(.4),
            blurRadius: 10,
            spreadRadius: 5,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xff07ADE1),
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CircleAvatar(
                    radius: 28,
                    backgroundImage: NetworkImage(faces[2]),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                      height: 20,
                      width: 30,
                      decoration: const BoxDecoration(
                        color: Color(0xff07ADE1),
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                      child: const Icon(
                        Icons.star,
                        size: 15,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Richmond",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "4 Holes",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "-4",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Score",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "18",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "HCP",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HoleChips extends StatelessWidget {
  const HoleChips({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 20,
          width: 50,
          decoration: const BoxDecoration(
            color: Color(0xff1CB45F),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: const Center(
            child: Text(
              "1",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          height: 20,
          width: 50,
          decoration: const BoxDecoration(
            color: Color(0xff1CB45F),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: const Center(
            child: Text(
              "2",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          height: 20,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(.3),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: const Center(
            child: Text(
              "3",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          height: 20,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(.3),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: const Center(
            child: Text(
              "4",
              style: TextStyle(
                  color: Color(0xff283037),
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}

class TipCard extends StatelessWidget {
  const TipCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * .6,
      height: size.height * .13,
      decoration: const BoxDecoration(
        border: Border(
          left: BorderSide(
            color: Color(0xff1CB45F),
            width: 2,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Tip",
              style: TextStyle(
                  color: Color(0xff1CB45F), fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Keep your head down and your eyes on the ball. Sligh dog-leg uphill, tough hole.",
              style: TextStyle(
                  color: Color(0xff283037), fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class YardsCard extends StatelessWidget {
  const YardsCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * .3,
      height: size.height * .15,
      decoration: const BoxDecoration(
        color: Color(0xff283037),
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            spreadRadius: 5,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Icon(
              Icons.play_arrow_rounded,
              color: Color(0xff1CB45F),
              size: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                '184y',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 32),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Remain',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StatsCards extends StatelessWidget {
  const StatsCards({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * .32,
      width: size.width * .3,
      decoration: BoxDecoration(
        color: const Color(0xffDFE3E6),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Icon(
                Iconsax.ruler,
                color: Colors.grey,
                size: 25,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                '12%',
                style: TextStyle(
                    color: Color(0xff283037),
                    fontWeight: FontWeight.bold,
                    fontSize: 32),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Plane',
                style: TextStyle(
                    color: Color(0xff283037),
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Icon(
                Iconsax.wind,
                color: Colors.grey,
                size: 25,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                '5-8',
                style: TextStyle(
                    color: Color(0xff283037),
                    fontWeight: FontWeight.bold,
                    fontSize: 32),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'MPH SE',
                style: TextStyle(
                    color: Color(0xff283037),
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'cookie_details.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  String uid = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   elevation: 0.0,
        //   centerTitle: true,
        //   leading: IconButton(
        //     icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
        //     onPressed: () {
        //       Navigator.of(context).pop();
        //     },
        //   ),
        //   title: Text('Articles',
        //       style: TextStyle(
        //           fontFamily: 'Varela',
        //           fontSize: 20.0,
        //           color: Color(0xFF545D68))),
        // ),
        body: Column(
      children: [
        Expanded(
          child: Container(
            // width: 100.0,
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            child: SingleChildScrollView(
              //for padding
              physics: BouncingScrollPhysics(),

              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeCard(
                        onPress: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CookieDetail(
                                  assetPath: 'assets/magnifier.png',
                                  link:
                                      "https://samarth.community/category/health/",
                                  cookiename: 'Magnifier')));
                        },
                        icon: 'assets/magnifier.png',
                        title: 'Magnifier',
                      ),
                      HomeCard(
                        onPress: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CookieDetail(
                                  assetPath: 'assets/health_wellness.png',
                                  link: "https://samarth.community/videos/",
                                  cookiename: 'Articles')));
                        },
                        icon: 'assets/articles.png',
                        title: 'Articles',
                      )
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CookieDetail(
                                    assetPath: 'assets/magnifier.png',
                                    link:
                                        "https://samarth.community/category/health/",
                                    cookiename: 'Magnifier')));
                          },
                          icon: 'assets/magnifier.png',
                          title: 'Magnifier',
                        ),
                        HomeCard(
                          onPress: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CookieDetail(
                                    assetPath: 'assets/health_wellness.png',
                                    link: "https://samarth.community/videos/",
                                    cookiename: 'Articles')));
                          },
                          icon: 'assets/articles.png',
                          title: 'Articles',
                        )
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CookieDetail(
                                    assetPath: 'assets/magnifier.png',
                                    link:
                                        "https://samarth.community/category/health/",
                                    cookiename: 'Magnifier')));
                          },
                          icon: 'assets/magnifier.png',
                          title: 'Magnifier',
                        ),
                        HomeCard(
                          onPress: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CookieDetail(
                                    assetPath: 'assets/health_wellness.png',
                                    link: "https://samarth.community/videos/",
                                    cookiename: 'Articles')));
                          },
                          icon: 'assets/articles.png',
                          title: 'Articles',
                        )
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CookieDetail(
                                    assetPath: 'assets/magnifier.png',
                                    link:
                                        "https://samarth.community/category/health/",
                                    cookiename: 'Magnifier')));
                          },
                          icon: 'assets/magnifier.png',
                          title: 'Magnifier',
                        ),
                        HomeCard(
                          onPress: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CookieDetail(
                                    assetPath: 'assets/health_wellness.png',
                                    link: "https://samarth.community/videos/",
                                    cookiename: 'Articles')));
                          },
                          icon: 'assets/articles.png',
                          title: 'Articles',
                        )
                      ]),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    uid = FirebaseAuth.instance.currentUser!.uid;
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard(
      {Key? key,
      required this.onPress,
      required this.icon,
      required this.title})
      : super(key: key);
  final VoidCallback onPress;
  final String icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        width: MediaQuery.of(context).size.width * 0.42,
        height: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0 / 2),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                  tag: icon,
                  child: Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(icon), fit: BoxFit.contain)))),
              // SizedBox(height: 7.0),
              Text(title,
                  style: TextStyle(
                      color: Color(0xFF575E67),
                      fontFamily: 'Varela',
                      fontSize: 14.0)),
            ]),
        // Image.asset(
        //   icon,
        //   height: 70.0,
        //   width: 70.0,

        // ),
        // Text(
        //   title,
        //   textAlign: TextAlign.left,
        //   style: TextStyle(color: Colors.black, fontSize: 16),

        //   // style: .montserrat(
        //   // textStyle: TextStyle(color: Colors.white, fontSize: 17)),
        //   // TextStyle(
        //   // color: Colors.white, fontSize: 16, fontFamily: 'RobotoMono'),
        // )
      ),
    );
  }
}
